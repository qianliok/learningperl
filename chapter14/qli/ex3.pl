#!/usr/bin/perl
use warnings;
use strict;

print "Input a string:\n";
chomp( my $string = <STDIN> );

print "Input a sub string:\n";
chomp( my $sub = <STDIN> );

my $pos = index($string, $sub);
my @report = ();
while( $pos != -1 ){
  push  @report, $pos;
  $pos = index($string, $sub, $pos+1);
}
print "@report\n";

