
class config {

  file { "/etc/modprobe.d/pcspkr.conf":
    ensure     => present,
    owner      => 'root',
    group      => 'root',
    mode       => '0544',
    source     => 'puppet:///modules/config/pcspkr.conf'
  }

  file { "/etc/modprobe.d/piix4.conf":
    ensure     => present,
    owner      => 'root',
    group      => 'root',
    mode       => '0544',
    source     => 'puppet:///modules/config/piix4.conf'
  }

}
