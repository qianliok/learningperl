#!/usr/bin/perl

use warnings;
use strict;
use feature "say";

my %family_names = ( fred => "flintstone", barney => "rubble", wilma => "flintstone" ); 

say "Enter a first name:";
chomp( my $given = <STDIN> );

say "$given is mononymous" if( !exists $family_names{$given} ); 
say "${given}'s surname is $family_names{$given}" if ( exists $family_names{$given} );

