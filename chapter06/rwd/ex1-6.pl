#!/usr/bin/perl

use strict;
use warnings;

my %surnames = ( fred => "flintstone", barney => "rubble", wilma => "flintstone" );

print "Type a name to find the surname: ";
chomp(my $name= <STDIN>);
print( "Surname: " . ($surnames{$name} // "WOPS!!! No surname found.") . "\n" );

exit 0;

