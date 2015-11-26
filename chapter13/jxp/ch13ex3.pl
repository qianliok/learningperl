#!/usr/bin/perl
use warnings;
use strict;
use feature "say";
use File::HomeDir;

my $dirname;
if ( !$ARGV[0] || $ARGV[0] =~ /^\s+$/ ){
  $dirname = File::HomeDir->my_home;
} else {
  $dirname = $ARGV[0];
}

say "Listing directory: " . $dirname;

opendir ( my $dir_fh, $dirname ) or die "Cannot open directory: $!";
while ( my $file = readdir $dir_fh ){
  say $file;
}

