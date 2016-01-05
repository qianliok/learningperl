#!/urs/bin/perl

use strict;
use warnings;

if (@ARGV != 1) {
	die "Filename needed as parameter";
}

open(FIN, "<", $ARGV[0]) or die $!;
open(FOUT, ">", $ARGV[0] . ".out") or die $!;

while (<FIN>) {                   # take one input line at a time
	chomp;
	s/fred/\n/gi;
	s/wilma/fred/gi;
	s/\n/wilma/gi;
	print FOUT "$_\n";
}

close(FIN);
close(FOUT);
