# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod "puppet-#{name}", :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen",      "3.10.4"

# Support for default hiera data in modules

github "module_data", "0.0.4", :repo => "ripienaar/puppet-module-data"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "brewcask",   "0.0.6"
github "dnsmasq",    "2.0.1"
github "foreman",    "1.2.0"
github "gcc",        "2.2.0"
github "git",        "2.7.6"
# dev "go"#,         "2.1.0"
mod 'go',
  :git => "https://github.com/salimane/puppet-go",
  :ref => 'class_versions'
github "homebrew",   "1.12.0"
github "hub",        "1.4.0"
github "inifile",    "1.2.0", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",      "1.4.5"
github "nodejs",     "4.0.1"
github "openssl",    "1.0.0"
github "phantomjs",  "2.3.0"
github "pkgconfig",  "1.0.0"
github "repository", "2.3.0"
github "vcsrepo", "1.2.0", :repo => "puppetlabs/puppetlabs-vcsrepo"
# dev "ruby"#, "8.1.7"
mod 'ruby',
  :git => "https://github.com/salimane/puppet-ruby",
  :ref => 'rbenv_plugins'
github "stdlib",     "4.5.1", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"
github "xquartz",    "1.2.1"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

# Please only add needed personal modules not available here in people_puppetfile
# sample in modules/people/puppetfile.rb.example
people_puppetfile = '/opt/boxen/repo/modules/people/puppetfile.rb'
eval(File.read(people_puppetfile)) if File.exist?(people_puppetfile)


github "alfred", "1.4.0"
github "android", "1.4.0"
# github "appcleaner", "1.0.0"
github "appcode2", "1.0.0"
# github "archiver", "0.0.1", :repo => "singuerinc/puppet-archiver"
# github "arduino", "1.0.1"
# github "atom", "1.2.0"
github "augeas", "1.3.1"
github "automake", "1.0.0"
github "authy", "1.0.1"
github "bash", "1.2.0"
github "btsync", "1.0.0"
# github "caffeine", "1.0.0"
# github "calibre", "3.1.0"
# github "ccleaner", "1.1.0"
# dev "charles"#, "1.0.4"
mod 'charles',
  :git => "https://github.com/salimane/puppet-charles",
  :ref => 'version'
github "chrome",     "1.2.0"
# github "cinch", "1.0.1"
# github "clipmenu", "1.0.0"
github "clojure", "1.3.0"
github "cmake", "1.0.1"
github "cord", "1.0.0"
github "couchdbx", "1.3.0"
github "diffmerge", "0.0.5", :repo => "arron-green/puppet-diffmerge"
# github "dash", "1.0.0"
github "docker", "0.9.0"
github "dockutil", "0.2.1"
github "dropbox", "1.4.1"
github "eclipse",    "2.5.0"
github "eclipse-plugin-egit", "0.0.5", :repo => "steinim/puppet-eclipse-plugin-egit"
github "elasticsearch", "2.7.1"
github "elixir", "0.0.1"
github "emacs", "1.3.0"
github "erlang", "1.0.4"
github "evernote", "2.0.7"
github "firefox",    "1.2.3"
github "fig", "1.0.0"
github "fish", "1.0.0"
github "flux", "1.0.1"
github "foreman", "1.2.0"
github "gdb", "1.0.0"
# github "gimp", "1.0.1"
# github "github_for_mac", "1.0.3"
github "googledrive", "1.0.2"
# github "google_notifier", "1.0.1"
github "gpgtools", "1.0.4"
github "graphviz", "1.0.0"
# github "hipchat", "1.1.3"
# github "heroku", "2.1.1"
github "htop",  "1.0.0",  :repo => "skottler/puppet-htop"
github "imagemagick", "1.3.0"
# github "imageoptim", "0.0.2"
github "inkscape", "1.0.3"
# github "intellij", "1.5.1"
# github "invisionsync", "1.0.0", :repo => "Traxmaxx/puppet-invisionsync"
# github "iterm2",     "1.2.4"
github "java",       "1.8.2"
github "jenkins", "1.2.0"
github "jmeter", "0.1.5"
github "kaleidoscope", "1.0.5", :repo => "ngs/puppet-kaleidoscope"
github "keepassx", "1.0.0"
github "karabiner", "1.0.6"
# github "lastpass", "1.1.0", :repo => "dieterdemeyer/puppet-lastpass"
github "libevent", "0.0.1", :repo => "enthooz/puppet-libevent"
github "libpng", "1.0.0"
# github "libreoffice", "4.2.6"
# github "licecap", "1.0.1"
github "limechat", "1.3.0", :repo => "dieterdemeyer/puppet-limechat"
github "macvim", "1.0.0"
github "magican", "1.0.2"
github "memcached", "2.0.0"
github "mongodb", "2.6.1"
github "moreutils", "1.0.0"
github "mplayerx", "1.0.2"
github "mr", "1.0.1"
github "mysql", "1.2.2"
github "netbeans", "1.0.1"
github "nmap", "1.0.3"
github "nsq", "1.0.1"
github "ntfs_3g", "1.0.0", :repo => "MoOx/puppet-ntfs_3g"
# github "onyx", "1.2.0"
github "oclint", "1.1.6"
github "onyx", "1.2.0"
# github "opera", "0.3.3"
github "osx",        "2.8.0"
# dev "osxfuse"#, "1.3.0"
mod 'osxfuse',
  :git => "https://github.com/salimane/puppet-osxfuse",
  :ref => 'yosemite'
# github "packer", "0.6.1"
github "parallels", "1.1.1"
github "pcre", "1.0.0"
# dev "pgadmin3"#, "1.0.0"
# mod 'pgadmin3',
#   :git => "https://github.com/salimane/puppet-pgadmin3",
#   :ref => 'version'
github "php", "1.2.6"
github "phpstorm", "1.0.6"
github "pixman", "1.0.0"
github "postgresql", "3.0.3"
github "propane", "1.0.0"
github "property_list_key", "0.1.0"
github "protobuf", "1.0.0"
github "pycharm", "1.0.4"
github "python", "2.0.0"
github "qt", "1.4.0"
# github "quicksilver", "1.3.0"
github "rdio", "1.0.0"
github "redis", "3.1.0"
github "riak", "1.1.3"
# github "rubymine", "1.1.0"
github "screen", "1.0.0"
# github "sequel_pro", "1.0.1"
github "silverlight", "1.0.1"
github "shiftit", "0.0.2"
# github "skitch", "1.0.3"
# github "skype", "1.1.0"
github "solr", "1.0.4"
github "sourcetree", "1.0.0"
# dev "spectacle"#, "1.0.0"
# mod 'spectacle',
#   :git => "https://github.com/salimane/puppet-spectacle",
#   :ref => 'version'
# github "spotify", "1.0.2"
github "statsd", "1.0.3"
github "steam", "1.0.1"
# github "sublime_text_2", "1.1.2"
github "swig", "1.0.0"
github "sysctl", "1.0.1"
github "thunderbird", "1.4.0"
github "tmux", "1.0.2"
# github "tor", "1.0.2"
github "transmission", "1.1.0"
github "tunnelblick", "1.0.7"
github "utorrent", "1.1.1"
github "vagrant", "3.3.0"
github "vim", "1.0.5"
github "virtualbox", "1.0.13"
# github "vlc", "1.1.0"
github "wkhtmltopdf", "1.2.1"
github "vmware_fusion", "1.2.0"
github "wget", "1.0.1"
github "wuala", "0.0.1", :repo => "haelmy/puppet-wuala"
github "xctool", "0.0.2"
github "xpdf", "1.0.1"
github "zeromq", "1.0.0"
github "zookeeper", "1.0.4"
github "zsh", "1.0.0"
