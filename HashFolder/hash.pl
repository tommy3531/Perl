use strict;
use warnings;

######################################## Create Basic Hash #######################################################
# Create empty hash
#my %color_of;
#
## Insert a key-value pair into a hash
#my $fruit = 'apple';
#$color_of{$fruit} = 'red';
#
## or this way
##$color_of{apple} = 'red';
#
## Fetch element from hash
#
##color_of -> apple = 'red'
#print $color_of{apple}, "\n";
#
## Does not work does not exist
##print $color_of{orange}, "\n";
#
## Add key-value pair
#$color_of{orange} = "orange";
#$color_of{grape} = "purple";
#
## Value all three values out
#print $color_of{apple}, "\n";
#print $color_of{orange}, "\n";
#print $color_of{grape}, "\n";

######################################## Initialize a hash with value ############################################
#my %color_of = (
	#
	## Note =>
	#apple => "red",
	#orange => "orange",
	#grape => "purple",
#);

####################################### => ######################################################################
#
#	=> - called fat arrow or comma used to indicate pairs of elements
#
#
#
#
#################################################################################################################

####################################### Assignment to a hash element ############################################

#$color_of{apple} = "green";
#print $color_of{apple}, "\n";

####################################### Iterating over hashes ###################################################

# Load keys into array
#my @fruits = keys %color_of;
#for my $fruit(@fruits){
	#print "The color of '$fruit' is $color_of{$fruit}\n";
#}

####################################### Iterating over hashes pt2 ################################################

## You dont need to use temp variable @fruits, you can iterate over them directly and return values of the keys
#for my $fruit(keys %color_of){
	#
	## Display the key and $key{value}
	#print "The color of '$fruit' is $color_of{$fruit}\n";
#}
#
## Prints the number of key value pairs
#print scalar keys %color_of;

####################################### Loop through hash while ###################################################

# Define a hash
my %coins = (
	penny => 1,
	nickle => 5,
	quarter => 25,
);

# Loop through the hash
#while((my $key, my $value) = each(%coins)){
	#print "$key", "$value", "\n";
#}

####################################### Loop through hash foreach ###################################################
#foreach my $key(sort keys %coins) {
	#print "$key: $coins{$key} \n";
#}

####################################### Sort foreach ###################################################
foreach my $value(sort {$coins{$a} cmp $coins{$b}} keys %coins){
	print "$value $coins{$value} \n";
}