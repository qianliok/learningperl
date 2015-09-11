#!perl
use warnings;

@names = qw( fred betty barney dino wilma pebbles bamm-bamm );

print "Enter few numbers between 1 and " . ($#names+1) . ":\n";

chomp(@numbers = <STDIN>);

print "You chose:\n";
foreach (@numbers) {
	if($_>= 1 && $_ <= $#names+1){
		print "$names[ $_ - 1 ]\n";	
	} else {
		print "Opps! You are not listening to me. You enter: $_\n";
	}
  
}
