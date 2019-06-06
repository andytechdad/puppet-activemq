class activemq::install(){

    if $activemq::manage_user {

      group {$activemq::group: ensure => 'present'}

      user {$activemq::user:
        ensure     => 'present',
        managehome => true,
        comment    => 'ActiveMQ user account managed by puppet activemq module',
        gid        => $activemq::group,
        require    => Group[$activemq::group]
      }

    }

    case $activemq::install_type {

      'tar' : {

        notify{"Installing via Tarball":}

      }

      default : {
        fail("Unrecognised Installation method ${activemq::install_type}. Only 'tar' is currently supported.")
      }

    }

}
