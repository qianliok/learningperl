#!/usr/bin/perl
use strict;
use warnings;
use feature "say";

if(scalar @ARGV == 0 ){
  say "Please provide at least one file as a command line argument";
}else {

  $^I = ".bak";

  while(my $line = <> ){
  
    $line =~ s|(#!/usr/bin/perl)|$1\n##Copyright (C) 2015 by JPeace2|g;

    print $line;
  }

}