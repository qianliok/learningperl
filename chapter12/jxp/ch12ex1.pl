#!/usr/bin/perl
use warnings;
use strict;
use feature "say";

foreach my $filename ( @ARGV ){
  say &check_permissions( $filename );
}
  
sub check_permissions {
  my $filename = shift;
  my $message;
  
  if ( ! -e $filename ){
    return $message = "$filename does not exist";
  }
  
  $message = "$filename is ";
  
  my $permissions = 0;
  
  if ( -r $filename ){
    $message .= "readable, ";
    $permissions += 4;
  }
  
  if ( -w $filename ){
    $message .= "writable, ";
    $permissions += 2;
  }
  
  if ( -x $filename ){
    $message .= "executable";
    $permissions += 1;
  }
  
  # Added for test purposes
  # $permissions = 0;
  
  if ( !$permissions ){
    return $message = "$filename has no permissions";
  }
  # Clean up
  if ( ( substr $message, -2, 2 ) eq ", " ){
    $message = substr( $message, 0, -2 );
  }
  
  return $message;
}
