use strict;
use warnings;
use feature 'say';
sub get { my $input = <>; chomp($input); $input }

my ($a, $b, $c) = split " ", get;

my $res = $c - ($a - $b);

say $res < 0 ? 0 : $res;