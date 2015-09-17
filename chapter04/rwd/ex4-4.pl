#!/usr/bin/perl

my $last_person;

sub greet {
	my ($person) = @_;
	if ($last_person) {
		print "Hi $person!, $last_person is also here!\n"
	} else {
		print "Hi $person!, You are the first one here!\n"
	}
	$last_person = $person;
}

greet( "Fred" );
greet( "Barney" );

exit 0
