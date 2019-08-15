use strict;
use warnings;
use feature 'say';
sub get { my $input = <>; chomp($input); $input }

my $N = get;
my $A = [sort {$b <=> $a} split " ", get];

my ($alice, $bob) = (0, 0);

while (my ($idx, $val) = each @$A) {
    $alice += $val if $idx % 2 == 0;
    $bob += $val if $idx % 2 == 1;
}

say $alice - $bob;