#!/usr/bin/perl

use warnings;

print "Please input some lines for reverse, signal the end of input by Contorl-D: \n";
@lines = <STDIN>;
my @lines_reverse = reverse @lines;

print "Input Reversed:\n @lines_reverse\n";
print "Interestingly this will reverse every line characters: \n".reverse(@lines)."\n";

=c
Output:
$ ./ex1.pl
Please input some lines for reverse, signal the end of input by Contorl-D:
12
34
Input Reversed:
 34
 12

Interestingly this will reverse every line characters:

43
21
=cut

