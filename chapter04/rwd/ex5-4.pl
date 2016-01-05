#!/usr/bin/perl

my @last_person;

sub greet {
	my ($person) = @_;
	if (@last_person) {
		print "Hi $person!, I've seen: @last_person\n"
	} else {
		print "Hi $person!, You are the first one here!\n"
	}
	push (@last_person, $person);
}

greet( "Fred" );
greet( "Barney" );
greet( "Wilma" );
greet( "Betty" );

exit 0
