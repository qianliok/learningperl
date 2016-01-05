#!/usr/bin/perl

use strict;
use warnings;
use feature "say";

say "Enter the directory name you want listing for ::" ;

chomp( my $dir_name = <STDIN> );

$dir_name = ($dir_name eq '') ? $ENV{HOME} : $dir_name ;

if( ! (-d $dir_name) ) {
	die "$dir_name is not a valid directory... Exiting...";	
}

chdir $dir_name;

my @all_files = glob '*';
    
foreach ( sort @all_files ) {
	say "$_";
}

