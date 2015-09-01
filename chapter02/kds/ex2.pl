use warnings;

use Math::Trig qw( pi );

print "Enter a radius: \n";
chomp( $rad = <STDIN> );

my $cir = ( 2 * pi * $rad );

print "Circumference: $cir\n";

