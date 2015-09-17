#!/usr/bin/perl

use strict;
use warnings;
use feature "say";
use Scalar::Util qw( looks_like_number );

sub total {
    chomp(my @vars=@_ );
    my $total=0;

    while ( my $number = pop (@vars)) {
        if ( looks_like_number ($number)) {
            $total += $number;    
        } else {
            say " {$number} is not a numeric --> INGORING!! ";
        }
    }
    return $total;
}


my @fred = qw{ 1 3 5 7 9 };
my $fred_total = total(@fred);
print "The total of \@fred is $fred_total.\n";
print "Enter some numbers on seperate lines:\n";
my $user_total = total(<STDIN>);
print "The total of these numbers is $user_total.\n";

