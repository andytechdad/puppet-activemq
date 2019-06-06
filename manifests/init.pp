class activemq(
  String $version                = '5.15.19',
  String $install_type           = 'tar',
  Boolean $manage_user           = True,
  String $user                   = 'activemq',
  String $group                  = 'activemq',
  ){

    include activemq::install

}
