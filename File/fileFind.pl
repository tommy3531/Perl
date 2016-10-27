use strict;
use warnings;
use File::Find;

## Get directory from cmd line arguments
#my $dir = shift;
#my $file;
#
#sub getFile {
	#
	## Get the file name (NO Path)
	##$file = $_;
	##if(-d $file){
		##print "$file \n";
	##}
	##print "$File::Find::name\n";
	#print "$_\n";
	#
#}
#
##find(\&getFile, $dir);
#
#find(
	#{
		#wanted => \&getFile,
		#bydepth => 1
	#},
	#$dir
#);


######################################## Notes ###################################################################
#
#	find() - does a depth first search over the given directories in the order they are given.
#			 when a file is found it called the &biggest subroutine.
#
#	sub biggest - 
#	-s if -f - get the size of the file if this is a file
#
##################################################################################################################
######################################## Traversing a directory Tree #############################################
#
#	Example of directory tree
#		root
#		root/a
#		root/a/aa.txt
#		root/a/foo
#		root/a/foo/bar.txt
#		root/c
#
##################################################################################################################

######################################## Find Biggest File #######################################################
#
#
#use File::Find;
#my $path = shift || '.';
#my $savedsize;
#my $savedname;
#my($userSize) = @ARGV;
#
#sub findbiggestfile {
	#
    #return unless -f && -s _ <= $userSize;
    #$savedsize = -s _;
    #$savedname = $File::Find::name;
#}
#find(\&findbiggestfile, $path);
#print "Biggest file $savedname is $savedsize bytes long.\n";
##################################################################################################################
######################################## Notes ###################################################################
#
#	find() - does a depth first search over the given directories in the order they are given.
#			 when a file is found it called the &biggest subroutine.
#
#	sub biggest - 
#
##################################################################################################################

my $size;
my @sorted;
my %size;

($#ARGV == 0) or die "Usage: $0 [directory]\n"; 

use File::Find;
    
find(sub {$size{$File::Find::name} = -s if -f;}, @ARGV);
@sorted = sort {$size{$b} <=> $size{$a}} keys %size;
    
splice @sorted, 20 if @sorted > 20;
    
foreach (@sorted) 
{
    printf "%10d %s\n", $size{$_}, $_;
}

#my $path = shift || '.';
#my $savedsize;
#my $savedname;
#my($userSize) = @ARGV;

#find(\&findbiggestfile, $path);
#
#sub findbiggestfile {
	#
	#my $file = $_;
	#foreach my $pFile ($file){
		##print "$pFile: \n";
		#if(-f $pFile){
			#$savedsize = -s $pFile;
			#if($savedsize >= $userSize){
				#$savedname = $File::Find::name;
			#}
#
		#}
	#}
#}
#
#print "Biggest file $savedname is $savedsize bytes long.\n";


#print "%-10s %s\n", -s, $_ for @files[$disfile-3, $disfile], "\n";


#print "Enter the number of the element you wish to view :";
#chomp (my $x=<STDIN>);
#
#my @names=("Muriel","Gavin","Susanne","Sarah","Anna","Paul","Trish","Simon");
#
#print "The first two elements are @names[0,1]\n";
#print "The first three elements are @names[0..2]\n";
#print "You requested element $x who is $names[$x-1]\n";		# starts at 0
#print "The elements before and after are : @names[$x-2,$x]\n";
#print "The first, second, third and fifth elements are @names[0..2,4]\n";
#
#print "a) The last element is $names[$#names]\n";	# one way
#print "b) The last element is @names[-1]\n";		# different way 