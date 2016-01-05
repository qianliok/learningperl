#!perl
use warnings;
use strict;

my $find=0;
my $line;

print "I found:\n";
while (<>) {
	$line = $_;

  	if (/[A-Z][a-z]+/) {
  		$find = 1;
    	print "$line";
	}
}

if($find == 0){
	print "Nothing!";
}
