#!/urs/bin/perl

use strict;
use warnings;

$^I = ".bak";

while (<>) {
	s/(^#!.*)/$1\n## Copyright (c) 2015 Rafael Waldo Delgado Doblas\n## Distributed under the GNU GPLv3./;
	print;
}
