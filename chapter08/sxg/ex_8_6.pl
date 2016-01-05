#!perl
use warnings;
use strict;
#use utf8;

my $marker = "☺";

if ( @ARGV == 1 ){
	while (<>) {
		my $line = $_;
	  	chomp($line);
	  	if ($line =~ /\s\z/) {
	    	print "$line$marker\n";
	  	}
	}
}


