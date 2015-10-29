#!/urs/bin/perl

use strict;
use warnings;

if (@ARGV != 1) {
	die "Filename needed as parameter";
}

open(FIN, "<", $ARGV[0]) or die $!;
open(FOUT, ">", $ARGV[0] . ".out") or die $!;

while (<FIN>) {                   # take one input line at a time
	s/fred/larry/gi;
	print FOUT;
}

close(FIN);
close(FOUT);
