#!/usr/bin/perl
use warnings;
use strict;

open( INPUT, $ARGV[0] ) or die $!;
my @text = <INPUT>;

print "Please input a regular expression, program will quit with empty line \n";
while ( chomp( my $pattern = <STDIN> ) ) {
  last if ( $pattern eq "" );
  eval {
    my @matching = grep /$pattern/, @text;
    print "[$pattern] Matching lines:: \n" . join( "\n", @matching ) . "\n";
  };
  if ( $@ ) {
    print "Invalid regular expression: $@ \n";
  }
}
close (INPUT);
