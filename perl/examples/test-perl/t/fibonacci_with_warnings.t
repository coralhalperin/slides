use strict;
use warnings;

use Test::More tests => 5 + 1;
use Test::NoWarnings;
use Test::Warn;

use lib 'lib';
use MyTools;


{
    my $result = other_fibo(2);
    is($result, 1, 'fibonacci on 2');
}

{
    my $result;
    warning_is {$result = fibonacci(-1)} "Given number must be > 0",
        'warning when called with -1';
    is($result, 0, 'fibonacci on -1 returns 0');
}

{
    my $result = other_fibo(4);
    is($result, 3, 'fibonacci on 4');
}

{
    my $result = other_fibo(6);
    is($result, 8, 'fibonacci on 6');
}


sub other_fibo {
    warn "Some other warning @_";
    fibonacci(@_);
}

