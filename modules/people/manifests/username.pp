#
class people::username {

  # include android::ndk
  # include android::platform_tools
  # include android::sdk
  # include android::tools
  # android::build_tools { '18': }
  # # install 18 version for all
  # android::version { '18':
  #   options => ['platform', 'add_on', 'system_image', 'sample']
  # }
  # android::extra { 'extra-google-google_play_services' : }
  # include android::doc
  # include android::studio
  # include atom
  # atom::package { [
  # 'auto-detect-indentation',
  # 'auto-update-packages', 'color-picker',
  # 'command-logger', 'compare-files',
  # 'editor-stats', 'emmet', 'file-icons',
  # 'git-plus', 'language-docker', 'language-protobuf', 'go-plus',
  # 'language-gradle', 'language-nginx', 'language-puppet',
  # 'language-swift',
  # 'linter-puppet-lint', 'pretty-json',
  # 'linter', 'markdown-format',
  # 'minimap', 'monokai',
  # 'quotes', 'save-session', 'sort-lines', 'toggle-quotes',
  # 'atom-alignment',
  #   ]:
  # }
  # include btsync # http://labs.bittorrent.com/experiments/sync.html
  # include charles # http://www.charlesproxy.com/
  # class {'charles::license':
  #   license_name => 'Your name',
  #   license_key  => '7ad6c7a6c87...',
  # }
  # include chrome
  # include chrome::beta
  # include chrome::canary
  # include chrome::chromium
  # include chrome::dev
  # include clojure # http://clojure.org/
  # include dockutil
  # dockutil::item { 'Add Skype':
  #   item     => "/Applications/Skype.app",
  #   label    => "Skype",
  #   action   => "add",
  #   position => 11,
  # }
  # include eclipse::ggts
  # include eclipse::java
  # include eclipse::java # http://www.eclipse.org/
  # include eclipse::jee
  # include elasticsearch # The ENV['BOXEN_ELASTICSEARCH_PORT'], ENV['BOXEN_ELASTICSEARCH_URL']
  # include fish
  # class { 'fish': # Install fish, but don't set it as your default shell
  #   chsh => false,
  # }
  # include foreman # https://github.com/ddollar/foreman
  # include imagemagick # http://www.imagemagick.org/
  # include jenkins # Browse to http://jenkins.dev. ENV['BOXEN_JENKINS_PORT'], ENV['BOXEN_JENKINS_HOME']
  # include jmeter # http://jmeter.apache.org/
  # class { 'kaleidoscope':
  #   enable_cli   => true,
  #   make_default => false
  # }
  # include karabiner
  # include karabiner::login_item
  # karabiner::remap{ 'controlL2controlL_escape': } # enable remapping left control to left control + escape
  # karabiner::set{ 'parameter.keyoverlaidmodifier_timeout': # set the parameter.keyoverlaidmodifier_timeout to 300
  #   value => '300'
  # }
  # karabiner::private_xml{ 'private.xml': # set the contents of the private.xml file.
  #   content => '<some>xml</some>'
  # }
  # karabiner::profile{ 'foo': }
  # karabiner::set{ 'parameter.keyoverlaidmodifier_timeout':
  #   value   => '300',
  #   profile => 'foo'
  # }
  # include memcached
  # include memcached::lib
  # include mongodb # ENV['BOXEN_MONGODB_PORT'], ENV['BOXEN_MONGODB_URL']
  # include mysql # ENV['BOXEN_MYSQL_PORT'], ENV['BOXEN_MYSQL_URL'], ENV['BOXEN_MYSQL_SOCKET']
  # mysql::db { 'mydb': } # https://github.com/boxen/puppet-mysql
  # include netbeans        # Netbeans All
  # include netbeans::jse   # Netbeans Java SE
  # include netbeans::jee   # Netbeans Java EE
  # include netbeans::cpp   # Netbeans C/C++
  # include netbeans::php   # Netbeans PHP
  # include nginx # http://wiki.nginx.org/Main
  # ensure_resource('nodejs::version', '0.12.7') # install any arbitrary nodejs version
  # nodejs::module { 'bower': # install some npm modules
  #   node_version => '0.12.7'
  # }
  # # launch nsqd and nsqlookupd, and point nsqd at nsqlookupd. nsqadmin web UI at localhost:14171.
  # # ENV['BOXEN_NSQD_TCP_PORT'](default 14150), ENV['BOXEN_NSQD_HTTP_PORT'] (default 14151)
  # # ENV['BOXEN_NSQLOOKUPD_TCP_PORT'](default 14160), ENV['BOXEN_NSQLOOKUPD_HTTP_PORT'](default 14161)
  # include nsq
  # include osx::disable_app_quarantine
  # include osx::dock::2d
  # include osx::dock::autohide
  # include osx::dock::clear_dock
  # include osx::dock::dim_hidden_apps
  # include osx::dock::disable
  # include osx::dock::hide_indicator_lights
  # include osx::dock::icon_size # class {'osx::dock::icon_size': size => 36}
  # include osx::dock::pin_position # class {'osx::dock::pin_position':}
  # include osx::dock::position # class {'osx::dock::position': position => 'right'}
  # include osx::finder::empty_trash_securely
  # include osx::finder::enable_quicklook_text_selection
  # include osx::finder::show_all_on_desktop
  # include osx::finder::show_external_hard_drives_on_desktop
  # include osx::finder::show_hard_drives_on_desktop
  # include osx::finder::show_hidden_files
  # include osx::finder::show_mounted_servers_on_desktop
  # include osx::finder::show_removable_media_on_desktop
  # include osx::finder::unhide_library
  # include osx::global::disable_autocorrect
  # include osx::global::disable_remote_control_ir_receiver
  # include osx::global::enable_keyboard_control_access
  # include osx::global::expand_print_dialog
  # include osx::global::expand_save_dialog
  # include osx::global::key_repeat_delay # class { 'osx::global::key_repeat_delay': delay => 35}
  # include osx::global::key_repeat_rate # class { 'osx::global::key_repeat_rate': rate => 0}
  # include osx::global::natural_mouse_scrolling # class { 'osx::global::natural_mouse_scrolling': enabled => true }
  # include osx::no_network_dsstores
  # include osx::software_update
  # include osx::universal_access::ctrl_mod_zoom
  # include osx::universal_access::enable_scrollwheel_zoom
  # osx::recovery_message { 'If this Mac is found, please call 123-456-7890': } # https://github.com/boxen/puppet-osx
  # include phantomjs # Installs Phantomenv for PhantomJS version management
  # phantomjs::version { '1.9.0': } # Install PhantomJS version 1.9.0
  # phantomjs::global { '1.9.0': } # Set the global version of PhantomJS (version should be installed already)
  # include php::composer
  # include php::5_4_11
  # include php::fpm::5_4_11
  # php::extension::apc { "apc for ${version}":
  #   php     => '5.4.11',
  #   version => '3.1.13', # Optionally specify the extension version
  # }
  # $name = "project-name"
  # $version = "5.4.11"
  # php::fpm::pool { "${name}-${version}":
  #   version     => $version,
  #   socket_path => "${boxen::config::socketdir}/${name}",
  #   require     => File["${nginx::config::sitesdir}/${name}.conf"],
  # }
  # # boxen-base/modules/projects/manifests/trollin.pp
  # class projects::trollin {

  #   php::project { 'trollin':
  #     source        => 'boxen/trollin',
  #     elasticsearch => true,
  #     mysql         => true,
  #     nginx         => 'php/nginx/nginx.conf.erb',
  #     redis         => true,
  #     php           => '5.3.23',
  #   }
  # } # https://github.com/boxen/puppet-php
  # include postgresql
  # postgresql::db { 'mydb': }
  # # manage OS X plist files, e.g. disable Gatekeeper in 10.8
  # property_list_key { 'Disable Gatekeeper':
  #   ensure => present,
  #   path   => '/var/db/SystemPolicy-prefs.plist',
  #   key    => 'enabled',
  #   value  => 'no',
  # }
  # include redis # ENV['BOXEN_REDIS_PORT'], ENV['BOXEN_REDIS_URL']
  # repository { # clone some code repositories to some folder
  #   '/path/to/code':
  #     source   => 'user/repo', #short hand for github repos
  #     provider => 'git';
  #   'my emacs config':
  #     source   => 'git://github.com/wfarr/.emacs.d.git',
  #     path     => '/etc/emacs.d',
  #     provider => 'git',
  # }
  # include riak
  # class { 'ruby::global': # Set the global default ruby (auto-installs it if it can)
  #   version => '2.2.3'
  # }
  # ensure_resource('ruby::version', '2.2.3') # install a ruby version
  # ruby::gem { "bundler for ${version}": # ensure a gem is installed for a certain ruby version
  #   gem     => 'bundler',
  #   ruby    => "2.2.3",
  #   version => '~> 1.10.6'
  # }
  # $python_version = '2.7.11'
  # # Set the global default python (auto-installs it if it can)
  # class { 'python::global':
  #   version => $python_version
  # }
  # ensure_resource('python::version', $python_version) # install a python version
  # # Install Python versions
  # python::version { $python_version: }
  #
  # # ensure a certain python version is used in a dir
  # python::local { '/path/to/some/project':
  #   version => $python_version
  # }
  # # Install the latest version of virtualenv
  # python::package { "virtualenv for ${python_version}":
  #   package => 'virtualenv',
  #   python  => $python_version,
  # }
  #
  # # Installing a pyenv plugin
  # python::plugin { 'pyenv-virtualenvwrapper':
  #   ensure => 'v20140122',
  #   source => 'yyuu/pyenv-virtualenvwrapper',
  # }
  # # Running a package script
  # # pyenv-installed gems cannot be run in the boxen installation environment which uses the system
  # # python. The environment must be cleared (env -i) so an installed python (and packages) can be used in a new shell.
  # exec { "env -i bash -c 'source /opt/boxen/env.sh && PYENV_VERSION=${python_version} virtualenv venv'":
  #   provider => 'shell',
  #   cwd => "~/src/project",
  #   require => Python::Package["virtualenv for ${python_version}"],
  # }
  # include solr
  # include statsd # https://github.com/boxen/puppet-statsd
  # sysctl::set { 'somekey':
  #   value => 'somevalue'
  # }
  # include sysctl::ipforwarding
  # include zeromq # http://zeromq.org/
  # include zookeeper # http://zookeeper.apache.org/
  # include zsh # Installs zsh and makes it your default shell. For justice.

}
