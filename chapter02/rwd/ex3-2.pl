#!/usr/bin/perl

print "Give me a radius: ";
my $r = <>;
my $pi = 3.141592654;

print "The circunference is: ";
if ($r > 0) {
	print 2 * $pi * $r;
} else {
	print 0;
}
print "\n"

