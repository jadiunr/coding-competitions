use strict;
use warnings;
use feature 'say';
sub get { my $input = <>; chomp($input); $input }

my ($a, $b) = split " ", get;

my $res = ($a * $b) % 2 == 0 ? 'Even' : 'Odd';

say $res;