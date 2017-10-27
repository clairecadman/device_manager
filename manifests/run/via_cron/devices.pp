# Conditional class.

# TODO: Remove '--user=root' after PUP-1391 is resolved.

# Perform a 'puppet device' run via cron.

class puppet_device::run::via_cron::devices {

  cron {'run puppet_device via cron':
    ensure  => present,
    command => "${puppet_device::run::command} device --user=root --waitforcert=0",
    user    => 'root',
    minute  => 45,
  }

}