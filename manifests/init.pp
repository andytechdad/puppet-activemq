class activemq(
  String $version                = '5.15.19',
  String $install_type           = 'tar',
  Boolean $manage_user           = true,
  String $user                   = 'activemq',
  String $group                  = 'activemq',
  ){

    include activemq::install

}
