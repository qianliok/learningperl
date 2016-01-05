#!/usr/bin/perl

use strict;
use warnings;
use Scalar::Util qw( looks_like_number );


sub is_valid_number {
	my ( $num ) = @_;

	if( defined ($num) && looks_like_number($num)) { 
		return 1;
	}
	return 0;
}


sub input_num {
	print "Please enter the number : ";
	
	my $number = <STDIN>;

	while (!is_valid_number($number)) {
		print "Invalid input. Please enter the number : ";
		$number = <STDIN>;	
	}
	
	chomp($number);
	return $number;
}


print "\n Please enter 2 numbers for the product \n";

my $var1 = input_num();

my $var2 = input_num();

my $product = $var1 * $var2;

print "\nProduct of $var1 and $var2 is $product \n";
