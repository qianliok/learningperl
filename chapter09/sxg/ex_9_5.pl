$^I = "~~";
my $str;
my $shebang=0;

my $copyright = "## Copyright (C) 2015 by me";

while (<>) {
  if (/\A#!/) { 
    $shebang = 1;
    $str = $_;
  }else{
  	if(! /Copyright \(C\)/){ # if it is a copyright line it won't copy
  			#(There will be a problem if we pass this program!!)
  			#Alternate1: start the line with Copyright(again that may encounter problems.)
  			#Altenate2: If it is in the comment.
  		if($shebang){
  			print $str.$copyright."\n";
  		 	$shebang = 0;
  		}
  		print;
  	}else{
  		print STDOUT $_;
  	}
  	
  }
}
