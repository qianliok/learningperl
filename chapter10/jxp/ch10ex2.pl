#!/usr/bin/perl
use strict;
use warnings;
use feature "say";
use Scalar::Util qw( looks_like_number );

my $num = int(1 + rand 100);

my $debug = $ARGV[0] // 'off';

if( $debug eq "on" ){
  say "DEBUG: Number is " . $num;
}

say "Please enter a number";

while( my $line = <STDIN> ){

  chomp($line);

  if ($line eq "quit" || $line eq "exit" ){
    last;
  }
  
  if (!looks_like_number($line)){
    say "That is not a number, please try again";
  }elsif ( $line > $num ){
    say "Too High";
  }elsif ( $line < $num ){
    say "Too Low";
  }elsif ( $line == $num ){
    say "Correct!";
    last;
  }
  if( $debug eq "on" ){
    say "DEBUG: Checking next line";
  }
}