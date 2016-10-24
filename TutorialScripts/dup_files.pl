use strict;
use warnings;
use File::Find;
use Digest::MD5;

$|=1;

sub find_dups (@)
{
	# The list of directories to search
	my @dir_list = @_;
	
	# If nothing there, return nothing
	if($#dir_list < 0) {
		return (undef);
	}
	
	# Files indexed by size
	my %files;
	
	# Go through the file tree and find all files with a similar size
	find( sub {
			-f &&
			push @{$files{(stat(_))[7]}}, $File::Find::name
		}, @dir_list
	);
	
	# The resulting list
	my @result = (); 
	
	#Now loop through the list of files by size and see if the MD5 is the same for any of them
	foreach my $size (keys %files){
		if($#{$files{$size}} < 1){
			next;
		}
		
		# MD5 -> file name array hash
		my %md5;
		
		# Loop through each file of this size and compute the MD5 sum
	
		foreach my $cur_file (@{$files{$size}}) {
			# Open the file.  Skip the files we cant open
			open(FILE, $cur_file) or next;
			binmode(FILE);
			push @{$md5{
				Digest::MD5->new->addfile(*FILE)->hexdigest}	
			}, $cur_file;
			close(FILE);
		} 
	
		# Now check for any duplicates in the MD5 hash
		foreach my $hash (keys %md5) {
			if($#{$md5{$hash}} >= 1) {
				push(@result, [@{$md5{$hash}}]);
			}
		}
	}
	return @result;
}

my @dups = find_dups(@ARGV);
foreach my $cur_dup(@dups) {
	print "Duplicates\n";
	foreach my $cur_file(@$cur_dup) {
		print "\t$cur_file\n";
	}
}