#!/usr/bin/perl

use 5.010;

%lastname = (

  fred => 'Flintstone',

  barney => 'the Dinosaur',

  mister => 'T',

);

say "Enter Firstname:";

my $name = <>;

chomp $name;

say "Hello Mr.$lastname{$name}";
