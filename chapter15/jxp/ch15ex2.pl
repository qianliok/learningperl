#!/usr/bin/perl
use strict;
use warnings;
use feature "say";
use Scalar::Util qw( looks_like_number );
use 5.010001;

say "Please enter a number";
chomp(my $num = <STDIN>);

my $str;
given($num){
  when ( !looks_like_number($_) ){say "That is not a number, please try again";}
  when ( check_remainder( $_, 3) eq 0 ){$str .= "Fizz "; continue}
  when ( check_remainder( $_, 5) eq 0 ){$str .= "Bin "; continue}
  when ( check_remainder( $_, 7) eq 0 ){$str .= "Sausage"}
}
if ( $str ){
  say "$str\n";
}else {
  say "Not divisable by 3, 5 or 7";
}

sub check_remainder {
  my ($num, $denom ) = @_;
  return $num % $denom;
}