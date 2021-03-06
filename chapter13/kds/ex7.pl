#!/usr/bin/perl

use warnings;
use strict;
use File::Basename;

die "...need source and destination" if( scalar @ARGV < 2 );

my $sym;

if( $ARGV[0] =~ /-s/ ){
  $sym = 1;
  shift @ARGV;
}

my $source = $ARGV[0];
my $des = $ARGV[1];

$des .= "/" . basename $source if( -d $des );

if( $sym ){
  symlink $source, $des or die "cant do dat";
}else{
  link $source, $des or die "cant do dat";
}
