#!perl
use warnings;
use strict;

die "No file names found!\n" unless @ARGV;

my $old_name = shift @ARGV;
my $old_age = -M $old_name;
$old_age = 0 if (!defined $old_age) ;

foreach my $file (@ARGV) {
	if(-e $file){
		my $age = -M _;
	    if ($age > $old_age){
	    	$old_name = $file;
			$old_age = $age;
	    }
	}
}

print "The oldest file:$old_name is $old_age  days old.\n",
  
  