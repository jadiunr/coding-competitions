use strict;
use warnings;
use feature 'say';
sub get { my $input = <>; chomp($input); $input }

my $n = get;
my $numbers = [1..$n];
my $count = 0;

for (@$numbers) {
    $count++ if scalar(split "", $_) % 2;
}

say $count;