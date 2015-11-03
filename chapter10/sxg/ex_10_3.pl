#!perl
use warnings;
use strict;
use 5.010;
my $columnSize = 0;

$ENV{"testing"} = undef;

foreach my $key ( keys %ENV ) {
    my $key_length = length( $key );
    if ($key_length > $columnSize){
    	$columnSize = $key_length;
    }
}

foreach my $key ( sort keys %ENV ) {
    printf "%-${columnSize}s  %s\n", $key, $ENV{$key} // "(undefined value)";
}
