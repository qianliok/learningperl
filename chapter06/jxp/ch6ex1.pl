#!/usr/bin/perl
use warnings;
use strict;
use feature "say";

my %names = qw( fred flintstone barney rubble wilma flintstone );

say "Enter somebody's name (Fred, Barney or Wilma):";

chomp( my $name = <STDIN> );

my $surname = $names{lc $name};

if ( defined $surname ){
  say "That person's surname is " . $surname;
} else {
  say "I don't know that person";
}