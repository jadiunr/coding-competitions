use strict;
use warnings;
use feature 'say';
sub get { my $input = <>; chomp($input); $input }

my ($A, $B) = split / /, get;

say [sort {$b <=> $a} ($A+$B, $A-$B, $A*$B)]->[0];