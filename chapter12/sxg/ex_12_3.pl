#!perl
use warnings;
use strict;

use 5.010;

die "No file names found!\n" unless @ARGV;

foreach my $file ( @ARGV ) {
    say "$file is readable, writable, and owned by you" if -o -r -w $file;
}
