#!perl
use warnings;
use strict;

my %last_name = (
  'fred' => 'flintstone',
  'barney' => 'rubble',
  'wilma' => 'flintstone',
  'sebin' => 'Nothing!');
print "Enter a given name: ";
chomp(my $name = <STDIN>);
print "Last name: $last_name{$name}.\n";

