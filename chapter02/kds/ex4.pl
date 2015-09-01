use warnings;

print "Enter the first number: \n";
chomp( $num1 = <STDIN> );
print "Enter the second number: \n";
chomp( $num2 = <STDIN> );

my $ans = $num1 * $num2;

print "The result of $num1 * $num2 = $ans\n";

