use strict;
use warnings;
use feature 'say';
sub get { my $input = <>; chomp($input); $input }

my $s = get;
my $out = [];

for my $rl_group ($s =~ /(R+L+)/g) {
    my $r_children = 0;
    my $l_children = 0;
    my $r_count = () = $rl_group =~ /R/g;
    my $l_count = () = $rl_group =~ /L/g;

    if ($r_count % 2 == 0) {
        $r_children += $r_count / 2;
        $l_children += $r_count / 2;
    } else {
        $r_children += $r_count - int($r_count / 2);
        $l_children += int($r_count / 2);
    }

    if ($l_count % 2 == 0) {
        $r_children += $l_count / 2;
        $l_children += $l_count / 2;
    } else {
        $r_children += int($l_count / 2);
        $l_children += $l_count - int($l_count / 2);
    }

    for (1..$r_count) {
        if ($_ == $r_count) {
            push(@$out, $r_children);
        } else {
            push(@$out, 0);
        }
    }

    for (1..$l_count) {
        if ($_ == 1) {
            push(@$out, $l_children);
        } else {
            push(@$out, 0);
        }
    }
}

say "@$out";
