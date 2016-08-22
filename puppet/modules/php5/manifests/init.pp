# Install PHP

class php5::install {

    package { [
      'php5-fpm',
      'php5-dev',
      'php5-gd',
      'php5-cli',
      'php5-curl',
      'php5-acpu',
      'php5-xdebug',
      'libyaml-dev'
    ]:
    ensure => present
    }->

    exec { 'pecl install yaml':
      cwd     => '/vagrant/',
      command => 'pecl install yaml',
      user    => 'root',
      notify  => Service['php5-fpm']
    }->

    file { '/etc/php5/fpm/php.ini':
      source  => '/vagrant/files/etc/php5/fpm/php.ini',
    }->

    service { 'php5-fpm':
      ensure  => running,
    }

}
