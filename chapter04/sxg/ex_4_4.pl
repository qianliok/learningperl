#!perl
use 5.010;

&greet( "Fred" );
&greet( "Barney" );
&greet( "Wilma" );
&greet( "Betty" );

sub greet {
    state $last;

    my $name = shift @_;

    if( defined $last ) {
        printf "Hi %-10s! %s is also here!\n", $name, $last;
    }
    else {
        printf "Hi %-10s! You are the first one here!\n", $name;
    }

    $last = $name;
}
