#!/usr/bin/perl
use warnings;
use strict;

use 5.010001;

print "Enter a number: ";
chomp( my $guess = <STDIN> );

my $result = '';
given ($guess) {
	when ( not( $_ % 3 ) ) { $result .= ' Fizz'; continue }
	when ( not( $_ % 5 ) ) { $result .= ' Buzz'; continue }
	when ( not( $_ % 7 ) ) {
		$result .= ' Sausage';
		continue;
	}    #last item no need to continue
}
print "$result\n";

