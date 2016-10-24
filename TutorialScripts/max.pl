use strict;
use warnings;

my @numbers = (3,5,10,4,6);
my $maxium = &max(@numbers);

sub max {
	
	# The first one is the largest so far
	my $max_so_far = shift @_;
	print "Start value from shift: $max_so_far \n";
	
	# Look at the remaining arguments
	foreach(@_) { # @_ - holds (5,10,4,6)
		if($_ >  $max_so_far) { # Default control variable $_ , first time through lool $_ = 5
			$max_so_far = $_; 
			print "This is the max value so far: $max_so_far \n";
		}
	}
	print "This is the highest value: $max_so_far \n";
	$max_so_far;
	
}