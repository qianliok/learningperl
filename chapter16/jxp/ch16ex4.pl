#!/usr/bin/perl
use strict;
use warnings;
use feature "say";

my %count;
# This edits hash within loop, but it works!
foreach my $signal ( keys %SIG ){
  $SIG{$signal}=sub{$count{$signal}++;say "Caught $signal $count{$signal} times"};
}
$SIG{'INT'}=sub{die "Interrupted"};
while (1){
}
