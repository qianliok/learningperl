#!/usr/bin/perl
## Copyright (C) 2015 by kds

use warnings;
use strict;

die "Bad/No file supplied" if( !defined $ARGV[0] );

my $copyright = "## Copyright (C) 2015 by kds\n";

foreach my $arg (@ARGV){
  (my $output = $arg) =~ s/(\.\w+)$/.bak/;

  open my $in_fh, '<', $arg or die "cannot open $arg";
  open my $out_fh, '>', $output or die "cannot open $output";

  while( <$in_fh> ){
    print $out_fh $_;
    print $out_fh $copyright if( /^#!.+/ );
  }
  rename("$output", "$arg");
}

