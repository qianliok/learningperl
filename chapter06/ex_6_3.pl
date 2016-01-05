#!perl
use warnings;
use strict;

my $columnSize = 0;
foreach my $key ( keys %ENV ) {
    my $key_length = length( $key );
    if ($key_length > $columnSize){
    	$columnSize = $key_length;
    }
}

foreach my $key ( sort keys %ENV ) {
    printf "%-${columnSize}s  %s\n", $key, $ENV{$key};
}
