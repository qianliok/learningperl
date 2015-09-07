#!perl
$pi = 3.141592654;
print "Enter radius :";
chomp($radius  = <STDIN>);
if($radius <0){
	$circumference = 0;
} else {
	$circumference  = 2 * $pi * $radius;
}
print "The circumference of a circle of radius $radius : $circumference.\n";