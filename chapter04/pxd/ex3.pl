#!/usr/bin/perl

use strict;
use warnings;
use feature "say";
use Scalar::Util qw( looks_like_number );

sub total {
    chomp(my @vars=@_ );
    my $total=0;

    foreach my $number (@vars) {
        if ( looks_like_number ($number)) {
            $total += $number;    
        } else {
            say " {$number} is not a numeric --> INGORING!! ";
        }
    }
    return $total;
}


sub average {
    return  @_ ? total(@_)/scalar @_ : 0;
}

sub above_average {
    my @vars = @_;
    my $avg = average(@vars);
    my @above_avg_list = ();
    foreach my $number (@vars) {
        if ($number > $avg) {
            push @above_avg_list, $number;
        }
    }
    return @above_avg_list;

}


my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";



