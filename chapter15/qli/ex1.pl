#!/usr/bin/perl

use warnings;
use strict;
use Scalar::Util qw(looks_like_number);
use 5.010001;

my $rand = int(rand(100))+1;

print "Please guess a number\n";
while(1){
    chomp (my $input = <STDIN>) ;
   
    if( $input =~ /exit/i ){
      print "Good bye!\n";
      exit 1;
    }elsif( !looks_like_number( $input ) ){
      print "Not number and unsupported cmd.\n";
      next;  
    }
   
    given ( $input  ) {
        when ( $_ == $rand ){
          print "You guessed correctly, input=[$input], random number=[$rand]\n";
          exit;
        }
        when ( $_ > $rand ){ print "Too big, try again\n"; }
        when ( $_ < $rand ){ print "Too small, try again\n"; }
    }


}
