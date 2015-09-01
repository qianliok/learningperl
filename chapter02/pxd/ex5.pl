#!/usr/bin/perl

use strict;
use warnings;
use Scalar::Util qw( looks_like_number );

print "Enter a string : ";
my $str = <STDIN>;
chomp($str);

while (!defined($str) || (length($str) == 0)) {
	print "Please enter a string of length > 0 : ";
	$str = <STDIN>;
	chomp($str);
}


print "How many times should the string be repeated ? ";

my $num = <STDIN>;
chomp($num);

while (!defined($num) || !looks_like_number($num) || ($num <0) || ($num =~ /[.]/)) {
	print "Please enter a valid non-negative integer \n";
	$num = <STDIN>;
}
chomp($num);

print "\n $str" x $num . "\n"; 
