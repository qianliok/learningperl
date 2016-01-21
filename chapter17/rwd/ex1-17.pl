#!/usr/bin/perl
use warnings;
use strict;

my $fin;
open $fin, '<', 'sample_text.txt' or die "Error opening file: $!";
my @lines = <$fin>;
  
while (my $pattern = <STDIN>) {
  last unless $pattern =~ /\S/;
  chomp $pattern;
  
  my @out = eval {
    grep /$pattern/, (@lines);
  };

  if ($@) {
    print "Warning: $@";
    next;
  }
  my $size = @out;
  print "$size ocurrences:\n", map "$_\n", @out;
}