#!perl
use warnings;

print "Enter text:\n"; 
@lines = <STDIN>;

@reverse_lines = reverse @lines;

print "You entered them in wrong order!\n";
print @reverse_lines;