#!/usr/bin/perl

use warnings;
use strict;

die "Supply some files...\n" if( scalar @ARGV < 1 );

my $oldest;
my $last_file_age = 0;

foreach ( @ARGV ){
  if( -e ){
    if( -C > $last_file_age ){
      $oldest = $_;
      $last_file_age = (-C);
    }
  }else{
    print "File $_ does not exist...\n";
  }
}
print "The oldest file is...$oldest, at $last_file_age days old\n";

