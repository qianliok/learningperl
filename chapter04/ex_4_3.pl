#!perl
use warnings;
use strict;

my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";

sub average {
  if (@_ == 0) { 
  	return
  }
  my $count = @_;
  my $sum = total(@_);
  $sum/$count;
}

sub above_average {
  my $average = average(@_);
  my @average_plus;
  foreach my $element (@_) {
    if ($element > $average) {
      push @average_plus, $element;
    }
  }
  @average_plus;
}

sub total {
  my $sum;  
  foreach (@_) {
    $sum += $_;
  }
  $sum;
}
