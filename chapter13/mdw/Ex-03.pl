#!/usr/bin/perl

use warnings;
use strict;
use feature "say";

say "What director do you want to change to and print the contents of?";

chomp (my $dirname = <>);

if ($dirname ne ""){
	chdir $dirname or die "Failed to change directory to $dirname";
} else {
	chdir or die "Failed to change to home directory";
	$dirname = $ENV{HOME}; 
}

my @contents;

opendir my $dir, $dirname or die "failed to open $dirname: $!";

while ( my $name = readdir $dir ){
	# next if $name =~ /^\./;
	push @contents, $name;

}

closedir $dir;

@contents = sort @contents;

foreach my $file (@contents) {
	say $file;
}
