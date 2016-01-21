#!/usr/bin/perl

use strict;
use warnings;
use feature "say";

my $filename = "sample_file.txt";

open (my $fh, $filename) or die "Could not open file: $filename";
my @contents = <$fh>;


while ( 1 ){

  print ( "Please enter a regular expression\n" );
  
  my $input = <STDIN>;
  if ( !defined $input || $input eq "\n" ){
    last;
  }
  chomp($input);
  
  my @results = eval{ grep m/$input/, @contents};
  
  if ( $@ ){
    say "There was an error with this regular expression please try again";
    next;
  }
  
  print @results;
  
}