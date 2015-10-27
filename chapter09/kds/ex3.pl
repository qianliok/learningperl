#!/usr/bin/perl
## Copyright (C) 2015 by kds

use warnings;
use strict;

die "Bad/No file supplied" if( !defined $ARGV[0] );

(my $output = $ARGV[0]) =~ s/(\.\w+)$/.out/;

open my $in_fh, '<', $ARGV[0] or die "cannot open $ARGV[0]";
open my $out_fh, '>', $output or die "cannot open $output";

while( <$in_fh> ){
  s/Fred/~/gi;         #temp
  s/Wilma/Fred/gi;
  s/~/Wilma/gi;        #replace temp
  print $out_fh $_;
}

