#!/usr/bin/perl

use warnings;
use strict;
use Scalar::Util qw(looks_like_number);

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
    
    if( $input== $rand ){
      print "You guessed correctly, input=[$input], random number=[$rand]\n";
      exit 1;
    }elsif( $input>$rand ){
      print "Too big, try again\n";
    }else{
      print "Too small, try again\n";    
    }
}
