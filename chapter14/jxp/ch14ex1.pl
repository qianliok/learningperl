#!/usr/bin/perl
use warnings;
use strict;
use feature "say";

my @list;
say "Enter some numbers to sort";
while (my $line = <STDIN>){
  chomp($line);
  my @split_line = split /\s+/, $line;
  push @list, @split_line;
}

@list = sort { $a <=> $b } @list;

my $max_length=0;
foreach my $number ( @list ){
  if ( length $number > $max_length ){
    $max_length = length $number;
  }
}

say "Sorted list:";
foreach my $number ( @list ){
  $number = sprintf "%${max_length}s", $number;
  say $number;
}
  