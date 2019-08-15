use strict;
use warnings;
use feature 'say';
sub get { my $input = <>; chomp($input); $input }

my ($n, $a, $b) = split " ", get;

my $nums = [1..$n];
my $total = 0;

for my $num (@$nums) {
    my $digit_sum = 0;
    $digit_sum += $_ for split "", $num;
    $total += $num if $digit_sum >= $a and $digit_sum <= $b;
}

say $total;