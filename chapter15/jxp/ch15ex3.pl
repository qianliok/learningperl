#!/usr/bin/perl
use warnings;
use strict;
use feature "say";
use 5.010001;

foreach ( @ARGV ){
  when ( ! -e $_ ){say "$_ does not exist"}
  
  my $message;
  $message = "$_: ";
  when( -r $_ ){$message .= "readable "; continue}
  when( -w $_ ){$message .= "writable "; continue}
  when( -x $_ ){$message .= "executable"; continue}
  say $message;
}