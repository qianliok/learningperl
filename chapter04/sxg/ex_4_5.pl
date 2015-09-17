#!perl
use 5.010;

&greet( "Fred" );
&greet( "Barney" );
&greet( "Wilma" );
&greet( "Betty" );

sub greet {
    state @last;

    my $name = shift @_;

    if( @last > 0 ) {
        #printf "Hi %-10s! I've seen: @last\n", $name ;
        #printf "Hi %-10s! I've seen: %3d\n", $name,$_  for @last;
        
        printf "Hi %-10s! I've seen: %s\n", $name, join( ',', @last ) ;
    }
    else {
        printf "Hi %-10s! You are the first one here!\n",$name;
    }

    push @last, $name;
}
