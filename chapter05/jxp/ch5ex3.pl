#!/usr/bin/perl
use warnings;
use strict;
use feature "say";
use Scalar::Util qw( looks_like_number );

say "Please enter a width";

chomp(my $width = <STDIN>);

if( !looks_like_number( $width ) ){
  die "$width is not a number";
}

say "Please enter some lines of text";
my @lines = <STDIN>;

for (my $i = 1; $i <= $width + 10; $i++){
  print substr( $i, -1 );
}
print "\n";

# One extra for the newline character
$width += 1;
my $format_string = "%${width}s";

foreach my $line ( @lines ){
  printf $format_string, $line;
}
