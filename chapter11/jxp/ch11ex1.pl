#!/usr/bin/perl
use warnings;
use strict;
use Module::CoreList;

my %modules = %{ $Module::CoreList::version{5.014} };

my $max_length=0;
foreach my $module ( keys %modules ){
  if ( length $module > $max_length ){
    $max_length = length $module;
  }
}

my $format_string = "%-${max_length}s%s\n";

while ( my ( $module, $version ) = each %modules ){
  if( $version ){
    printf $format_string, $module,$version;
  } else {
    print "$module\n";
  }
}