use warnings;

print "Enter a string: \n";
chomp( $str = <STDIN> );
print "How many times do you want to display $str?: \n";
chomp( $repeater = <STDIN> );

print $str x $repeater . "\n";

