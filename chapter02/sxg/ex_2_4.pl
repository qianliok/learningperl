#!perl
print "Enter number1: ";
chomp($one = <STDIN>);
print "Enter number2: ";
chomp($two = <STDIN>);
$result = $one * $two;
print "The result: $result.\n";