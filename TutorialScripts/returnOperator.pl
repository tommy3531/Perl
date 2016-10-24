use strict;
use warnings;

my @names = qw/ fred barney betty dino wilma pebbles bamm-bamm /;
my $result = &which_element_is("dino", @names);

sub which_element_is {
	
	# search @array for $what
	my($what, @array) = @_;
	
	#  Go through each element starting at smallest and working to largest
	foreach(0..$#array) {
		
		# Check if string held in $what is == to an array index
		# I dont get what $_ is doing 
		# $_ is a control variable
		if($what eq $array[$_]) {
			print "This is the value we are checking for $what in array postion $array[$_]";
			return $_;
		}
	}	
	-1;
}