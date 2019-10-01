#!/usr/local/bin/perl
#
# a script to replace certain outdated "info" pointers on the DLF pages
#
# Written by Eric Celeste <efc@clst.org> for CLIR on 1 July 2010
#
# 100118 (efc) 3hrs creating the script
# 100701 (efc) 3hrs modifying the script and related wrap files

# a few commands I used to look into the situation
# grep -R 'p.*class="news".*Please.*info.*diglib.*org' *
# about/dlfsteering.htm:<p class="news">Please send the <a href="mailto:info@diglib.org">DLF Executive Director</a> 
# forums/fall2008/2008fallprogram.htm:<p class="news">Please send your comments or suggestions to info "at" diglib "dot" org.</p>
# find . \( -name "*.htm" -or -name "*.html" \) -print

# the command I used to execute this script
# find . \( -name "*.htm" -or -name "*.html" \) -exec ./replace-100702.pl {} \;

print "."; # to let us know we are alive and checking

$old = $ARGV[0]; # assuming one filename in the first argument

$date = "100702"; # not a real date, but more of an identifier for this script
$new = "$old.$date.temp"; # the name of the temp file

$changed = 0; # used to make sure we only print each file name once

sub report {
	my ($line, $change, $text) = @_;
	if ($changed == 0) {
		print "\nchanged\t$old"; # print the file name
		$changed = 1;
	}
	chop $text;
	print "\n$line\t$change\t$text"; # print the nature of the change
}

# basic filter from Perl Cookbook 7.8 perl2/cookbook/ch07_09.htm

open(OLD, "< $old")         or die "can't open $old: $!";
open(NEW, "> $new")         or die "can't open $new: $!";
while (<OLD>) {
	# our tests 
    if (/urn:schemas-microsoft/) {
    	$undoMS = 1;
    }
    if (/content=PowerPoint\.Slide/) {
    	$undoMS = 1;
    }
    if (/\<link rel="stylesheet" type="text\/css" href="\/wrap\/wrap.css" \/\>\<script type="text\/javascript" src="\/wrap\/wrap.js"\>\<\/script\>\<\/head\>/) {
    	if ($undoMS == 1) {
    		s/\<link rel="stylesheet" type="text\/css" href="\/wrap\/wrap.css" \/\>\<script type="text\/javascript" src="\/wrap\/wrap.js"\>\<\/script\>\<\/head\>/\<\/head\>/g;
    		&report($.,"undoMS",$_);
    	}
    }
    print NEW $_            or die "can't write $new: $!";
}
close(OLD)                  or die "can't close $old: $!";
close(NEW)                  or die "can't close $new: $!";

if ($changed) { # replace the file if it changed
	print "\n";
	rename($old, "$old.$date.old")   or die "can't rename $old to $old.$date.old: $!";
	rename($new, $old)          or die "can't rename $new to $old: $!";
} else { # otherwise, just remove the temp file
	unlink($new)                or die "can't delete $new: $!";
}

### end of script