#!/usr/bin/perl

use warnings;

my $str=<STDIN>;
chomp($str);

my $num=<STDIN>;
chomp($num);

print "Ex Result:: \n";
if ( $num && $num>0 ){
     print "$str\n" x $num ;
}

