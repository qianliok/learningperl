#!/usr/bin/perl
use warnings;
use strict;
use feature "say";

if ( !$ARGV[0] || $ARGV[0] =~ /^\s+$/ ){
  chdir;
} else {
  chdir $ARGV[0] or die "Cannot change directory: $!\n";
}

say "Listing directory: " . ( $ARGV[0] // "home dir" );

foreach my $file ( glob "*" ){
  say $file;
}

