use strict;
use warnings;
use feature 'say';
sub get { my $input = <>; chomp($input); $input }

my $a = get;
my ($b, $c) = split " ", get;
my $s = get;

my $sum = $a + $b + $c;

say "$sum $s";