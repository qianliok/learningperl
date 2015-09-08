#!perl
use warnings;

print "Enter text:\n"; 

chomp(@lines = <STDIN>);
@sorted = sort @lines;

print "I order it for you:\n";
print "@sorted\n";
