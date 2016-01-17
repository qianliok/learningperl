#!/usr/bin/perl -w

use strict;
use feature "say";


my $dir = "/home/pxd/opt/test";

say "Changing to directory $dir";

chdir $dir or die "Could not change to directory $dir: $!";

exec 'ls -l' or die "Failed to get directory listing for $dir: $!";


