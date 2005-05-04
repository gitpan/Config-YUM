  use Config::YUM;

  my $yp = new Config::YUM;
  my $yum_conf = $yp->parse();

  foreach(keys %{$yum_conf}) {
    print "Section: $_ is called " . $yum_conf->{$_}->{name} . "\n" unless /main/;
  } 
