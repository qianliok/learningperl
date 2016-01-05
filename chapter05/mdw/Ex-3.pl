#!/usr/bin/perl

use feature "say";

my @words;

my $length = <>;

chomp $length;

while(<>){

  push @words, $_;

}

if ( $length < 30 ) {

  say "\n123456789012345678901234567890";

} else {

  my $ruler_bonus_length = (($length/10));

  my $ruler = "\n1234567890" . "1234567890" x $ruler_bonus_length;

  say $ruler;
}

chomp @words;

my $command = "%"."$length"."s\n";

foreach $word ( @words ){

  printf $command, $word;

}
