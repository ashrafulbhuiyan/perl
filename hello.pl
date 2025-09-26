#!/usr/bin/perl 

use strict;  # Enable strict mode for safer coding
use warnings; # Enable strict and warnings for better coding practices
use feature 'say';  # Enable 'say' feature for easier printing
use Cwd 'abs_path'; # Module to get absolute file paths

my $script_path = abs_path(__FILE__); # Get the absolute path of the script

open my $fh, '>', 'hello.txt' or die "Could not open file: $!";
say $fh "Path :: $script_path"; # Write the script path to the file
close $fh or die "Could not close file: $!";


open STDOUT, '>' , 'output.log' or die "Could not redirect STDOUT: $!";
say "Hello, World!";
say "Hello, Perl!";
close STDOUT or die "Could not close STDOUT: $!"; 


exit 0;

__END__