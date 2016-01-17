#!/usr/bin/perl
use strict;
use warnings;
use feature "say";

my $date = `date`;

if ( $date =~ /^S/ ){
  say "Go Play";
} else {
  say "Get to Work";
}
