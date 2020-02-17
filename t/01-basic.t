use v6.c;
use Test;
use Text::Center;

plan 25;

my $text = 'Raku';
is $text.&center, '                                      Raku                                     ', 'ok default';

for ^20 {
    is $text.&center($_).chars max $_, $text.chars max $_, 'ok, compensated for field width $_';
}

is $text.&center(:fill('=')), '===================================== Raku ====================================', 'ok defalt width, custom fill';

is $text.&center(30, :fill('#') ), '############ Raku ############', 'ok field width & fill';

is ( 2 ** 64 ).&center(36), '        18446744073709551616        ', 'ok with non-string inputs';

is ''.&center(36), '                                    ', 'ok with blank inputs';

done-testing;
