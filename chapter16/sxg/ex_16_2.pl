#!/usr/bin/perl
use warnings;
use strict;

# copy STDOUT
open( my $STDOUTOLD, '>&', STDOUT );

# copy STDERR
open( my $STDERROLD, '>&', STDERR );

# open file handles
open( STDOUT, '>>', 'ls.out' ) or die "Can't write to ls.out: $!";
open( STDERR, '>>', 'ls.err' ) or die "Can't write to ls.err: $!";

chdir '/' or die "Problem in chdir : $!";
exec 'ls', '-l' or die "Problem in listing: $!";

# restore STDOUT
open( STDOUT, '>&', $STDOUTOLD );

# restore STDERR
open( STDERR, '>&', $STDERROLD );

print "Check the outputfiles\n";
