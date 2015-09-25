#!/usr/bin/perl

use warnings;
use strict;

my %name_hash = (
    'fred' => 'flintstone',
    'barney' => 'rubble',
    'wilma' => 'flintstone',
    'empty' => '' 
    );

print "Please input a person's first name for their family name: ";
chomp(my $name = <STDIN> );

print exists $name_hash{$name} ? "$name\'s family name is $name_hash{$name} \n":"Unknown person \n";


