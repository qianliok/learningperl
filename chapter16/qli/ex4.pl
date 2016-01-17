#!/usr/bin/perl
use warnings;
use strict;

my $counter = {};
print "signal handler started with pid[$$] \n";

#Overwriting By values is the most efficient compare to 
#@SIG{ keys %SIG } = ( 'sig_handler' ) x keys %SIG;
#$SIG{$_} = 'sig_handler' foreach keys %SIG;
$_ = 'sig_handler' foreach values %SIG;
while(1){ sleep 1; };

sub sig_handler {
  my ($signal) = @_;

  if ( $signal eq "INT" ){
    die "Exit with INT signal\n";
  }
  print "Signal $signal triggered ".(++$counter->{$signal})." times\n"; 
}

