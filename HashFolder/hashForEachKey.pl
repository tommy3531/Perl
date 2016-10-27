use strict;
use warnings;

######################################## The Keys function #######################################################
#
#	keys - returns in random order an array whose elements are keys of a hase

my (%weekday, @daynumber, $key);

%weekday = (
	1 => 'Monday',
	2 => 'Tuesday',
	3 => 'Wednesday',
	4 => 'Thursday',
	5 => 'Friday',
	6 => 'Saturday',
	7 => 'Sunday',
);

##keys function
#@daynumber = keys(%weekday);
#
#print "This is the daynumber Array unsorted: @daynumber\n";
#
##keys weekday
#foreach my $key (keys(%weekday)){
	#print "$key";
#}
#print "\n";
#
#
#foreach my $key (sort keys(%weekday)){
	#print "$key";
#}
#print "\n";
######################################## The Keys function Notes #######################################################
#
#	keys - returns a list of all the keys in a hash
#	@daynumber - is an unordered list of all the keys in %weekday hash
##################################################################################################################
######################################## Keys Weekday ############################################################
#
#	keys(%weekday) - returns a list of keys
#	$key - represents a key in weekday hash
#	
######################################## The Values function #######################################################
#
#
##################################################################################################################
foreach my $val (values(%weekday)){
	print "$val ";
}
print "\n";


######################################## The Values function Notes #######################################################
#
#	values - returns unordered list, consisting of all the vlaues of a named hash
##################################################################################################################
