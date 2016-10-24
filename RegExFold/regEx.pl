use strict;
use warnings;

#$|=1;
#
#sub main {
	#my $file = '/Users/tommarler/Desktop/dictionaryFolder/dict2.txt';
	#
	##open file
	#open(INPUT, $file) or die("Input file $file not found.\n");
	#w
	## Reading file
	#while (my $line = <INPUT>) {
		## $1
		#if($line =~ /(I..a.)/) {
			#print $1;
		#}	
	#}	
	#close (INPUT);
#}
#main();

#################################### open file ####################################################################################################
#
#	open (INPUT, $file) - open file with handler if not show message
#
###################################################################################################################################################

#################################### reading file ###########################################################################################################
#
# while ( $readLine = <Line in File>) - while lines are present in the file handler read them into the readline variable
###################################################################################################################################################

#################################### $1 ###########################################################################################################
#
# $1 - refers to the stuff matched /()/
###################################################################################################################################################

#################################### Quantifiers ###########################################################################################################
#
#	. - wildcards any character
#	l+ - match one or more of the proceeding
#	* - match zero or more of the proceeding character /(so*n)/ matches son && soon && sn
#   Greedy - * bc it trys to match as much as possible /(s.*n)/
#	*? - match zero or more of the proceeeding character, match as little as possible not greedy /(s.*?n)/
#   
###################################################################################################################################################

#################################### Escape Sequence in RegEx #####################################################################################
#
#	* - matches zero or more of the proceeding character
#	d* - matches zero or more
#	.* - matches zero or more of any characters, as many as possible
#	.*? - matches zero or more of any character, as few as possiblesssss
#	*? - matches zero or more of the proceeding, as few as possiblesssss
#	+? - matches one or more of the proceeding, as few as possible
#	{5} - five of the proceeding 
#	{3, 6} - at least three and at most 6
#	{3, } - at least three
###################################################################################################################################################

sub main {
	
	# \d - digit 
	# \s - space
	# \S - non-space
	# \w - alphanumeric

	my $text = 'I am 32 years old tomorrow.';
	
	if($text =~ /(\d+)/) {
		print "Matched: '$1' \n";
	}	
	
}

main();