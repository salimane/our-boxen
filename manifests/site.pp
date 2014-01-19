require boxen::environment
require homebrew
require gcc

Exec {
  group       => 'staff',
  logoutput   => on_failure,
  user        => $boxen_user,

  path => [
    "${boxen::config::home}/rbenv/shims",
    "${boxen::config::home}/rbenv/bin",
    "${boxen::config::home}/rbenv/plugins/ruby-build/bin",
    "${boxen::config::home}/homebrew/bin",
    '/usr/bin',
    '/bin',
    '/usr/sbin',
    '/sbin'
  ],

  environment => [
    "HOMEBREW_CACHE=${homebrew::config::cachedir}",
    "HOME=/Users/${::boxen_user}"
  ]
}

File {
  group => 'staff',
  owner => $boxen_user
}

Package {
  provider => homebrew,
  require  => Class['homebrew']
}

Repository {
  provider => git,
  extra    => [
    '--recurse-submodules'
  ],
  require  => File["${boxen::config::bindir}/boxen-git-credential"],
  config   => {
    'credential.helper' => "${boxen::config::bindir}/boxen-git-credential"
  }
}

Service {
  provider => ghlaunchd
}

Homebrew::Formula <| |> -> Package <| |>

node default {
  # core modules, needed for most things

  include appcleaner
  include archiver
  include dnsmasq
  include gdb
  include git
  include homebrew # http://mxcl.github.com/homebrew
  include htop
  include hub
  include iterm2::dev
  include java
  include libevent
  include libpng
  include nginx
  include openssl
  include osx::disable_app_quarantine
  include osx::dock::clear_dock
  include osx::dock::dim_hidden_apps
  include osx::dock::icon_size # class {'osx::dock::icon_size': size => 36}
  include osx::dock::pin_position # class {'osx::dock::pin_position':}
  include osx::dock::position # class {'osx::dock::position': position => 'right'}
  include osx::finder::empty_trash_securely
  include osx::finder::enable_quicklook_text_selection
  include osx::finder::show_hidden_files
  include osx::finder::show_mounted_servers_on_desktop
  include osx::finder::unhide_library
  include osx::global::disable_autocorrect
  include osx::global::disable_remote_control_ir_receiver
  include osx::global::enable_keyboard_control_access
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog
  include osx::global::key_repeat_delay # class { 'osx::global::key_repeat_delay': delay => 35}
  include osx::global::key_repeat_rate # class { 'osx::global::key_repeat_rate': rate => 0}
  include osx::global::natural_mouse_scrolling # class { 'osx::global::natural_mouse_scrolling': enabled => true }
  include osx::no_network_dsstores
  include osx::software_update
  include osx::universal_access::ctrl_mod_zoom
  include osx::universal_access::enable_scrollwheel_zoom
  include pcre
  include python
  include ruby
  include screen
  include skype
  include sublime_text_2
  include vagrant
  include virtualbox
  include wget
  include xpdf


  $default_ruby_version = '2.0.0'

  # fail if FDE is not enabled
  if $::root_encrypted == 'no' {
    fail('Please enable full disk encryption and try again')
  }

  # node versions
  # include nodejs::v0_6
  # include nodejs::v0_8
  # include nodejs::v0_10

  # default ruby versions
  # include ruby::1_8_7
  # include ruby::1_9_2
  # include ruby::1_9_3
  ruby::version { $default_ruby_version: }
  ->
  ruby::gem { 'librarian-puppet':
    gem     => 'librarian-puppet',
    ruby    => $default_ruby_version,
    version => '~> 0.9.10'
  }
  vagrant::plugin { 'vagrant-hostmanager':
  }

  # common, useful packages
  package {
    [
      'ack',
      'findutils',
      'gnu-tar'
    ]:
  }

  file { "${boxen::config::srcdir}/our-boxen":
    ensure => link,
    target => $boxen::config::repodir
  }
}
