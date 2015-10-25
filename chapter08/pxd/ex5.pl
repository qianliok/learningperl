#!/usr/bin/perl

use strict;
use warnings;

use feature "say";

say "Enter a few lines to match words ending with 'a:";


while (<>) { # take one input line at a time
  chomp;
  if (/ \b (?<word> \w+ a) \b
  	# Perl 
	# allows
	# fancy
	# things
         (?<extra>.{0,5} ) 
	# so
	# I 
	# will
	# try 
	# it
	/x 
     ) {
  	say "Matched: |$`<$&>$'|";
	say "***** \$+{word}  contains '$+{word}' *****"; # the special match vars
	say "***** \$+{extra} contains '$+{extra}' *****";
  }
  else {
        say "No match: |$_|";
  }
}


		 
