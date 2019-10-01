#!/usr/local/bin/perl
#
# a script to undo replacements made by my other scripts!
#
# Written by Eric Celeste <efc@clst.org> for CLIR on 1 July 2010
#
# 100701 (efc) undoing mass changes

# the command I used to execute this script
# find . \( -name "*.100701.old" \) -exec ./replace-undo.pl {} \;

$new = $ARGV[0]; # assuming one filename in the first argument

if ($new =~ /(.*)\.\d\d\d\d\d\d\.old/) {
	$old = $1;
	print "renaming $new to $old\n";
} else {
	print "ignored $new\n";
	exit;
}

rename($new, $old)   or die "can't rename $new to $old: $!";

### end of script