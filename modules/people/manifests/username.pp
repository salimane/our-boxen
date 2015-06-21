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
  # include appcode2 # http://www.jetbrains.com/objc/index.html
  # include atom
  # atom::package { [
  #   'Sublime-Style-Column-Selection', 'atom-alignment',
  #   'atom-spotify', 'auto-detect-indentation',
  #   'auto-update-packages', 'autocomplete-plus', 'color-picker', 'command-logger', 'compare-files',
  #   'editor-stats', 'emmet', 'execute-as-ruby', 'file-icons',
  #   'fizzy', 'git-plus', 'html-helper', 'language-docker',
  #   'language-gradle', 'language-jade', 'language-nginx', 'language-puppet', 'language-swift',
  #   'linter', 'linter-pep8', 'linter-python-pyflakes', 'markdown-format',
  #   'minimap', 'minimap-git-diff', 'monokai', 'package-sync', 'pdf-view', 'pretty-json',
  #   'quotes', 'save-session', 'sassbeautify', 'sort-lines', 'toggle-quotes'
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
  # include cord # http://cord.sourceforge.net/
  # include couchdbx # http://couchdb.apache.org/
  # include diffmerge # https://sourcegear.com/diffmerge/
  # include docker # https://www.docker.io/
  # include dockutil
  # dockutil::item { 'Add Skype':
  #   item     => "/Applications/Skype.app",
  #   label    => "Skype",
  #   action   => "add",
  #   position => 11,
  # }
  # include dropbox # http://www.dropbox.com/
  # include eclipse::ggts
  # include eclipse::java
  # include eclipse::java # http://www.eclipse.org/
  # include eclipse::jee
  # include elasticsearch # The ENV['BOXEN_ELASTICSEARCH_PORT'], ENV['BOXEN_ELASTICSEARCH_URL']
  # include elixir # http://elixir-lang.org/
  # include emacs # http://www.gnu.org/software/emacs
  # include erlang # http://www.erlang.org/
  # include evernote # https://evernote.com/
  # include fig # http://www.fig.sh/
  # include firefox
  # include firefox::aurora
  # include firefox::beta
  # include firefox::nightly
  # class { 'firefox':
  #   version => '26.0b1'
  # }
  # include fish
  # class { 'fish': # Install fish, but don't set it as your default shell
  #   chsh => false,
  # }
  # include flux # http://justgetflux.com/
  # include foreman # https://github.com/ddollar/foreman
  # include go
  # class { 'go::global' :
  #   version => '1.4'
  # }
  # include googledrive
  # include imagemagick # http://www.imagemagick.org/
  # include inkscape # http://inkscape.org/
  # include jenkins # Browse to http://jenkins.dev. ENV['BOXEN_JENKINS_PORT'], ENV['BOXEN_JENKINS_HOME']
  # include jmeter # http://jmeter.apache.org/
  # class { 'kaleidoscope':
  #   enable_cli   => true,
  #   make_default => false
  # }
  # include keepassx # http://www.keepassx.org/
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
  # include limechat # http://limechat.net/mac/
  # include macvim # http://code.google.com/p/macvim/
  # include memcached
  # include memcached::lib
  # include mongodb # ENV['BOXEN_MONGODB_PORT'], ENV['BOXEN_MONGODB_URL']
  # include moreutils # http://joeyh.name/code/moreutils/
  # include mr # http://joeyh.name/code/mr/
  # include mysql # ENV['BOXEN_MYSQL_PORT'], ENV['BOXEN_MYSQL_URL'], ENV['BOXEN_MYSQL_SOCKET']
  # mysql::db { 'mydb': } # https://github.com/boxen/puppet-mysql
  # include netbeans        # Netbeans All
  # include netbeans::jse   # Netbeans Java SE
  # include netbeans::jee   # Netbeans Java EE
  # include netbeans::cpp   # Netbeans C/C++
  # include netbeans::php   # Netbeans PHP
  # include nginx # http://wiki.nginx.org/Main
  # ensure_resource('nodejs::version', 'v0.10') # install any arbitrary nodejs version
  # nodejs::module { 'bower': # install some npm modules
  #   node_version => 'v0.10'
  # }
  # # launch nsqd and nsqlookupd, and point nsqd at nsqlookupd. nsqadmin web UI at localhost:14171.
  # # ENV['BOXEN_NSQD_TCP_PORT'](default 14150), ENV['BOXEN_NSQD_HTTP_PORT'] (default 14151)
  # # ENV['BOXEN_NSQLOOKUPD_TCP_PORT'](default 14160), ENV['BOXEN_NSQLOOKUPD_HTTP_PORT'](default 14161)
  # include nsq
  # include ntfs_3g
  # include oclint # http://oclint.org/
  # include oclint::dev
  # include onepassword # https://agilebits.com/onepassword
  # include onyx # http://www.titanium.free.fr/downloadonyx.php
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
  # include osxfuse # http://osxfuse.github.io/
  # include parallels
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
  # include phpstorm # http://www.jetbrains.com/phpstorm/
  # include pixman # http://pixman.org/
  # include postgresql
  # postgresql::db { 'mydb': }
  # include propane # http://propaneapp.com/
  # # manage OS X plist files, e.g. disable Gatekeeper in 10.8
  # property_list_key { 'Disable Gatekeeper':
  #   ensure => present,
  #   path   => '/var/db/SystemPolicy-prefs.plist',
  #   key    => 'enabled',
  #   value  => 'no',
  # }
  # include protobuf # http://code.google.com/p/protobuf/
  # include pycharm # http://www.jetbrains.com/pycharm/
  # include qt
  # include rdio # http://en.rdio.com/
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
  #   version => '2.2.1'
  # }
  # ensure_resource('ruby::version', '2.2.1') # install a ruby version
  # ruby::gem { "bundler for ${version}": # ensure a gem is installed for a certain ruby version
  #   gem     => 'bundler',
  #   ruby    => "2.2.1",
  #   version => '~> 1.8.3'
  # }
  # include silverlight
  # include shiftit # https://github.com/fikovnik/ShiftIt/
  # include solr
  # include sourcetree # http://www.sourcetreeapp.com/
  # include statsd # https://github.com/boxen/puppet-statsd
  # include steam # http://store.steampowered.com/
  # include swig # http://www.swig.org/
  # sysctl::set { 'somekey':
  #   value => 'somevalue'
  # }
  # include sysctl::ipforwarding
  # class { 'thunderbird':
  #   version => '24.2.0',
  #   locale  => 'fr',
  # }

  # include tmux # http://tmux.sourceforge.net/
  # include transmission # http://www.transmissionbt.com/
  # include tunnelblick # http://code.google.com/p/tunnelblick/
  # include tunnelblick::beta
  # include utorrent # http://www.utorrent.com/
  # include vim # http://www.vim.org/ vim along with vim-pathogen,
  # vim::bundle { [
  #   'scrooloose/syntastic',
  #   'sjl/gundo.vim'
  # ]: }
  # # Example of how you can manage your .vimrc
  # file { "${vim::vimrc}":
  #   target  => "/Users/${::boxen_user}/.dotfiles/.vimrc",
  #   require => Repository["/Users/${::boxen_user}/.dotfiles"]
  # }
  # # Or, simply,
  # file { "${vim::vimrc}": ensure => exists }

  # include wkhtmltopdf
  # class { 'vmware_fusion': version => '6.0.2-1398658' } # https://www.vmware.com/products/fusion/
  # include wuala # https://www.wuala.com/
  # include zeromq # http://zeromq.org/
  # include zookeeper # http://zookeeper.apache.org/
  # include zsh # Installs zsh and makes it your default shell. For justice.

}
