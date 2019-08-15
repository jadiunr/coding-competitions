use strict;
use warnings;
use feature 'say';
sub get { my $input = <>; chomp($input); $input }

my $S = get;
my $words = ["dream", "dreamer", "erase", "eraser"];

while ($S) {
    say 'NO' and exit unless grep {$S =~ /$_$/} @$words;
    $S =~ s/$_$// for @$words;
}

say 'YES';
