#!/usr/bin/perl
use strict;
use warnings;
use feature "say";
use Scalar::Util qw( looks_like_number );
use 5.010001;

my $num = int(1 + rand 100);

say "Please enter a number";

while( my $line = <STDIN> ){

  chomp($line);

  given($line){
    when ( $_ eq "quit" || $_ eq "exit" || $_ eq "" ){last;}
    when ( !looks_like_number($_) ){say "That is not a number, please try again";}
    when ( $_ > $num ){say "Too High";}
    when ( $_ < $num ){say "Too Low";}
    when ( $_ == $num ){
      say "Correct!";
      last;
    }
  }
}
