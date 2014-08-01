#
class jails::params {
  $config_dir        = '/etc/jail.d/'
  $config_file_owner = 'root'
  $config_file_group = 'wheel'
  $config_file_mode  = '0444'

  $template          = 'jails/jail.conf.erb'
  $defaults          = {
    'exec_start'        => '/bin/sh /etc/rc',
    'exec_stop'         => '/bin/sh /etc/rc.shutdown',
    'exec_clean'        => 1,
    'mount_devfs'       => 1,
    'allow_mount'       => 1,
    'allow_mount_devfs' => 1,
  }
}