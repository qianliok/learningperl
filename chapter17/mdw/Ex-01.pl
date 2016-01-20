#!/usr/bin/perl

use strict;
use warnings;
use feature "say";

open TEXT, 'text';

my @text;

while ( <TEXT> ) {
	chomp;
	push @text, $_;
}

say "Enter an expression to match with the file provided:";

while ( <> ) {
	chomp; 
	my $expression = $_;
	my $counter = 0;
	if ( $expression eq "" ) {
		say "Goodbye!";
		last;
	}
	foreach my $line ( @text ) {
		my $true = 0;
		my $string = "if ( \"\$line\" =~ $expression ) { \$true = 1 } else { \$true = 0; }";
		my $pass = eval $string;
		if ( !defined $pass ) {
			say $@;
			last
		} elsif ( $true ) {
			say $line;
                        $counter += 1; 
		}
	}
	say "$counter lines matched $expression";
}
