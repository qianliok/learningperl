#!perl
use warnings;
use strict;

die "No file names found!\n" unless @ARGV;

foreach my $file (@ARGV) {
	print "$file:\n";
	if(-e $file){
		print "\treadable\n" if -r $file;
  		print "\twritable\n" if -w $file;
  		print "\texecutable\n" if -x $file;
		
	}else{
		print "\tDoes not exist\n";
		
	}
}


