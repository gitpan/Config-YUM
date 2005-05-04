use Test::More tests => 4;
BEGIN {
	
use_ok('Config::YUM');

# TODO: Tests should be better!
my $yp = new Config::YUM;
ok($yp != 0, 'new works');
my $yum_conf = $yp->parse();
ok($yum_conf, 'yum_conf is a hash?');

ok(1);

};
