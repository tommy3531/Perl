use strict;
use warnings;
#use v5.22;

########################## Input from the Diamond Operator ###############################################
#
#  <> - read input from, works well with utilities such as cat,sed,awk,sort,grep,lpr etc.
#  invocation argument to a program - normally # of words Ex. ./my_program frank John Tom
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
#
#
#
##########################################################################################################

my @ARGV = qw# larry moe curly #;
while(<>){
	
	chomp;
	print "It was $_ that I saw in some stooge-like file!\n";	
}