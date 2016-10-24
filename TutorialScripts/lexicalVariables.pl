use strict;
use warnings;

###################### Lexical Variables in Foreach #####################################################
#
#       
#	$square - private to foreach bc of {}, if {} not present variable is private to the entire source file
#   scope - $square is limited to within the the {}, if called outside scope you might find wrong value.
#	my($num) = @_; #list context
#   my $num = @_; scalar context
#
#
#########################################################################################################

foreach(1..10) {
	
	# Private variable in this loop
	my $square = $_ * $_;
	print "$_ squared is $square.\n";
}