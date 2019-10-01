This "wrap" folder contains the scripts that force a div to wrap around the old DLF pages. This facilitates attaching a warning to every DLF page without having to edit every page if the text or look of that warning needs to change.

Created by Eric Celeste for CLIR, June 2010.

To edit the message shown in the wrapper, edit the "message" variable in the file wrap.js. Be very careful not to change anything else in that file unless you are very sure of what you are doing.

To change the look of the border around the wrapped page, change the wrap.png image. (http://www.stripegenerator.com/)

The other specifics of the "look" of the wrapped page are defined in wrap.css.

Calling this wrap stuff by changing your files to be wrapped so that 

   </head>

becomes

   <link rel="stylesheet" type="text/css" href="/wrap/wrap.css" /><script type="text/javascript" src="/wrap/wrap.js"></script></head> ...)

A closely related aspect of this wrapping is that we redirect pages from the new site to this old site via a php redirect.

<?php
	// before we write out any page content, we check to see if we have content
	// if not, then we go to the "old" web content
	// note, this means that all 404's are handled at the "old" web site
	// it also breaks normal wordpress search (which is why we need google search)
	if (! have_posts()) {
		// phpinfo();
		wp_redirect('//old.diglib.org'.$_SERVER["REQUEST_URI"], 301);
		exit;
	}
?>

In our DLF case this is the the 404.php file of the diglib theme of WordPress.
