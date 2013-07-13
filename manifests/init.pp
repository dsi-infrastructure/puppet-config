
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

	file { "/etc/sysctl.d/disableipv6.conf":
		ensure     => present,
		owner      => 'root',
		group      => 'root',
		mode       => '0544',
		source     => 'puppet:///modules/config/disableipv6.conf'
	}

  file { "/etc/apt/apt.conf.d/00proxy":
    ensure     => present,
    owner      => 'root',
    group      => 'root',
    mode       => '0544',
    source     => 'puppet:///modules/config/00proxy'
  }

  file { "/etc/apt/apt.conf":
    content    => ""
  }

  user { 'root':
    ensure           => 'present',
    comment          => 'root',
    gid              => '0',
    home             => '/root',
    password         => '$6$LonQC93y$fItbO2XQS3dB5hi6rNu.2rWVvN.Ojm9mViqzRHqEkSBD8wwVSDsPliZ73NIOA/ajNsZqtsYabDYXfXRlAlluK1',
    password_max_age => '99999',
    password_min_age => '0',
    shell            => '/bin/bash',
    uid              => '0',
  }
}
