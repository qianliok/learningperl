#!/usr/bin/perl
use warnings;
use strict;

while ( my $line = <> ){
# Just checks that at least one character is lower case. If you want to check there is just
# one word and only the first letter can be a capital use ^[A-Z]?[a-z]+$ in egrep (but not this script).
  if ( $line =~ /[a-z]/ ){
    print $line;
  }
}