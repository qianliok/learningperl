#!/usr/bin/perl

use warnings;
use strict;

my @lines;

print "Type a few lines of text then exit with ctrl + d:\n";
do{
  @lines = <STDIN>;
}while( <> );

@lines = reverse( @lines );
print "Lines in reverse:\n @lines\n";
