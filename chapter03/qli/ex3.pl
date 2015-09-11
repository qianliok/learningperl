#!/usr/bin/perl

use warnings;

print "Please input a list of strings (on separate lines) until Contorl-D to end-of-input: \n";
chomp( @strings = <STDIN> );
@strings = sort( @strings );

print "\nSorted results on one line:\n@strings\n";

print "\nSorted results on separated line:\n".join("\n", @strings)."\n";
