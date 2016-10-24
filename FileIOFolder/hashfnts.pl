use strict;
use warnings;

########################## What is a Hash ################################################################
#	Think of a hash as a barrel, collections of key vlaue pair, things are assoicted with tags
#	Hash - is a data structure, can hold any number of values and retreive them as will
#	Find - you look up has values by name
#	Hash Keys - strings for accessing elements in a hash
##########################################################################################################

########################## Access hash elements ##########################################################
#	$hash{$some_key}
#	$hash{key}
##########################################################################################################

########################## Hash Functions ################################################################
#	keys funtions - yields a list of all the keys in a hash
#	values functions - yields a list of the values
##########################################################################################################

#my %hash = ('a' => 1, 'b' => 2, 'c' => 3);
#my @k = keys %hash;
#my @v = values %hash;

#print @k;
#print "\nThis is from v: @v \n";

########################## Hash Functions Not Empty #######################################################
#	if(%hash){
#		print "Hash is not empty";
#	}
###########################################################################################################

#if (%hash) {
#	print "The hash is not empty";
#}


########################## Hash Functions Foreach #########################################################
#	each - %hash returns a key-value pair from the hash, as a two element list Ex.("c", 3)
#	$key, $each - represent values in a list ("c",3) $key = c, $each = 3; 
###########################################################################################################

#while((my $key, my $value) = each %hash) {
#	print "$key => $value\n";
#}

######################### End of Program ##################################################################

########################## Typical Use of Hash ############################################################
#
#	
#
#
#
#
#
#
#
# 
###########################################################################################################
my %books = (
	Al      => 1,
	Bob     => 2,
	charile => 3,
	Dick    => 4, 
);

if($books{Al}){
	print "$books{Bob} has checked it out \n";
}