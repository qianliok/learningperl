use warnings;

use Math::Trig qw( pi );

print "Enter a radius: \n";
chomp( $rad = <STDIN> );

if( $rad < 0 ){
  $rad = 0;
}

my $cir = ( 2 * pi * $rad );

print "Circumference: $cir\n";

