#!/usr/bin/perl

use warnings;
use strict;

print "Enter a directory:\n";
chomp( my $dir = <STDIN> );

chdir $dir or die "...can't open $dir" if( $dir =~ /\S/ );
chdir or die "...can't open home dir" if( $dir =~ /\s/ );

print $_ . "\n" foreach( sort glob ".* *" );

