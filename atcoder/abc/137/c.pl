use strict;
use warnings;
use feature 'say';
sub get { my $input = <>; chomp($input); $input }

my $n = get;
my $s = [map {[split //, get]} 1..$n];

$_ = join("", sort @$_) for @$s;
@$s = sort {$a cmp $b} @$s;

my $group = {};
$group->{$_}++ for @$s;

my $total_count = 0;
for my $count (values %$group) {
    $total_count += $_ for 1..$count-1;
}

say $total_count;