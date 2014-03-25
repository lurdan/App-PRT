use Test::More tests => 4;

use_ok 'My::Food';
require_ok 'My::Food';

new_ok 'My::Food';
isa_ok My::Food->new, 'My::Food';

subtest 'name' => sub {
    my $pizza = My::Food->new('Pizza');
    is $pizza->name, 'Pizza';
};
