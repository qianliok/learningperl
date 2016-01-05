#!/usr/bin/perl

use strict;
use warnings;
use feature "say";
use Scalar::Util qw( looks_like_number );

sub total {
    chomp(my @vars=@_ );
    my $total=0;

    foreach my $number  (@vars) {
        if ( looks_like_number ($number)) {
            $total += $number;    
        } else {
            say " {$number} is not a numeric --> INGORING!! ";
        }
    }
    return $total;
}

sub math_total {
    #Lets have some math fun!
    (my $max) = @_;
    my $sum = ($max * ($max+1))/2;
    return $sum;
}

my @nums = (1..1000);
my $total = total(@nums);
my $mathtotal = math_total(scalar @nums);

say "The total of $nums[0] to $nums[-1] using normal summation is $total.";

say "The total of $nums[0] to $nums[-1] using math function is $mathtotal. ";

