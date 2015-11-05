#!perl
use warnings;
use strict;
use 5.010;

my $secret = int(1 + rand 100);
my $count =0;

my $debug = $ENV{DEBUG} // 1;
print "The secret number is :$secret\n" if $debug;
{
  print "Enter a number between 1 and 100: ";
  chomp(my $guess = <STDIN>);
  
  if ($guess =~ /quit|exit|\A\s*\z/i) {
    print "You tried " . ++$count ." times. The number was $secret.\n";
  } elsif ($guess < $secret) {
    print "Try " . ++$count ."  :Too small. Try again!\n";
    redo;
  } elsif ($guess == $secret) {
    print "Try " . ++$count ."  :Good! you find it\n";
  } else {
    print "Try " . ++$count ."  :Too large. Try again!\n";
    redo;
  }
}