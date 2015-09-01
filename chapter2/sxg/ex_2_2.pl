#!perl
$pi = 3.141592654;
print "Enter radius:";
chomp($radius = <STDIN>);
$circumference  = 2 * $pi * $radius;
print "The circumference of a circle of radius $radius : $circumference.\n";