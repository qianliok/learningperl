#!/usr/bin/perl

use warnings;
use strict;


foreach my $file (@ARGV) {
  if( -e $file ){
    print "$file is readable writable and owned by me\n" if ( -r -w -O $file );
  }else{
    print "$file not found.\n";
  }
}


