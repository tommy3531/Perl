#!/usr/bin/perl

# Path to directory you want to count files in on your server.
#$dir = "/path/some/where/";
#
#$directory_count = 0;
#$file_count=0;
#
#opendir(DIR, $dir);
#LINE: while($FILE = readdir(DIR)) {
#next LINE if($FILE =~ /^\.\.?/);
#
### check to see if it is a directory
#if(-d "$FILE"){
#$directory_count++;
#}
#else {
#$file_count++;
#}
#}
#closedir(DIR);
#
#print "Directories: $directory_count\n";
#print "Files: $file_count\n";
#
#exit;

#!/usr/bin/perl

use strict;
use warnings;
use File::Find;

my $ARGC = scalar @ARGV;
$ARGC >= 1 or die "Error: not enough arguments.\nUsage is: $0 </path/to/dir>\n";

my $file_counter = 0;

my $dir = shift;
if (-d $dir)
{
	find(\&count, $dir);
	print "Count: $file_counter\n";
}

sub count { 
	$file_counter++ if -f;
}