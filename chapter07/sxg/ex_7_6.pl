#!perl
use warnings;
use strict;

my $findW=0;
my $findF=0;
my $line;

print "I found:\n";
while (<>) {
	$line = $_;

  	if (/wilma/) {
  		$findW = 1;
	}
  	if (/fred/) {
  		$findF = 1;
	}
	if($findF && $findW){
		print "$line";	
	}
	
}

if($findF == 0 && $findW ==0){
	print "Nothing!";
}
