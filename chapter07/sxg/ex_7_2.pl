#!perl
use warnings;
use strict;

my $find=0;
my $line;

print "I found:\n";
while (<>) {
	$line = $_;

  	if (/[Ff]red/) {
  		$find = 1;
    	print "$line";
	}
}

if($find == 0){
	print "Nothing!";
}
