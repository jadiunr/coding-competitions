use strict;
use warnings;
use feature 'say';
sub get { my $input = <>; chomp($input); $input }

my $n = get;
my $a = [split " ", get];
my $count = 0;

while (1) {
    for (@$a) {
        say $count and exit if $_ & 1;
        $_ >>= 1;
    }
    $count++;
}