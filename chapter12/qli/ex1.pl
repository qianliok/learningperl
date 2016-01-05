#!/usr/bin/perl

use warnings;
use strict;


sub get_file_permissions{
  my ( $f ) = @_;

  my $attr = "";
  $attr .= "readble " if ( -r $f );
  $attr .= "writable " if ( -w $f );
  $attr .= "executable " if ( -x $f );

  return $attr;
}

foreach my $file (@ARGV) {
  if( -e $file ){
    print "$file permissions: ".get_file_permissions($file)."\n";
  }else{
    print "$file not found.\n";
  }
}


