#!/usr/bin/perl

use 5.010;
use warnings;

say "Enter numbers get names:";

chomp(@numbers=<>);
@names = qw( fred betty barney dino wilma pebbles bamm-bamm );

foreach $number (@numbers) {
  $number -=1;
  $result = $names[$number];
  say $result;
};
