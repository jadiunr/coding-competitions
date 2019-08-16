use strict;
use warnings;
use feature 'say';
sub get { my $input = <>; chomp($input); $input }

my ($k, $x) = split / /, get;

say "@{[map {$x-$k+$_} 1..$k*2-1]}";