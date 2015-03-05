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

github "boxen", "3.10.2"

# Support for default hiera data in modules

github "module_data", "0.0.3", :repo => "ripienaar/puppet-module-data"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "brewcask",    "0.0.6"
github "dnsmasq",     "2.0.1"
github "foreman",     "1.2.0"
github "gcc",         "2.2.0"
github "git",         "2.7.5"
# github "go",          "2.1.0"
github "homebrew",    "1.11.2"
github "hub",         "1.4.0"
github "inifile",     "1.1.1", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",       "1.4.4"
github "nodejs",      "4.0.0"
github "openssl",     "1.0.0"
github "phantomjs",   "2.3.0"
github "pkgconfig",   "1.0.0"
github "repository",  "2.3.0"
github "ruby",        "8.1.7"
github "stdlib",      "4.2.1", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",        "1.0.0"
github "xquartz",     "1.2.1"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "adium", "1.3.0"
github "alfred", "1.1.7"
github "android", "1.1.0"
github "appcleaner", "1.0.0"
github "appcode2", "1.0.0"
github "archiver", "0.0.1", :repo => "singuerinc/puppet-archiver"
github "augeas", "1.3.1"
github "automake", "1.0.0"
github "btsync", "1.0.0"
github "caffeine", "1.0.0"
github "calibre", "2.0.0"
github "ccleaner", "1.1.0"
github "charles", "1.0.4"
github "chrome",     "1.1.2"
github "cinch", "1.0.1"
github "clipmenu", "1.0.0"
github "clojure", "1.2.0"
github "cmake", "1.0.1"
github "cord", "1.0.0"
github "couchdbx", "1.3.0"
github "diffmerge", "0.0.5", :repo => "DorkScript/puppet-diffmerge"
github "dockutil", "0.1.2"
github "dropbox", "1.2.0"
github "eclipse",    "2.2.0"
github "eclipse-plugin-egit", "0.0.5", :repo => "steinim/puppet-eclipse-plugin-egit"
github "elasticsearch", "2.1.0"
github "emacs", "1.1.1"
github "erlang", "1.0.1"
github "evernote", "2.0.4"
github "firefox",    "1.1.7"
github "fish", "1.0.0"
github "flux", "1.0.0"
github "gdb", "1.0.0"
github "gimp", "1.0.0"
github "github_for_mac", "1.0.1"
github "google_notifier", "1.0.1"
github "graphviz", "1.0.0"
github "heroku", "2.1.1"
github "htop",  "1.0.0",  :repo => "skottler/puppet-htop"
github "imagemagick", "1.2.1"
github "imageoptim", "0.0.2"
github "inkscape", "1.0.3"
github "intellij", "1.4.0"
github "iterm2",     "1.0.6"
github "java",       "1.2.0"
github "jenkins", "0.0.7"
github "jmeter", "0.1.1"
github "keepassx", "1.0.0"
github "keyremap4macbook", "1.2.1"
github "lastpass", "1.1.0", :repo => "dieterdemeyer/puppet-lastpass"
github "libevent", "0.0.1", :repo => "enthooz/puppet-libevent"
github "libpng", "1.0.0"
github "libreoffice", "4.1.4"
github "licecap", "1.0.0"
github "limechat", "1.2.0", :repo => "dieterdemeyer/puppet-limechat"
github "macvim", "1.0.0"
github "magican", "1.0.2"
github "memcached", "1.4.0"
github "mongodb", "1.2.0"
github "moreutils", "1.0.0"
github "mplayerx", "1.0.2"
github "mr", "1.0.1"
github "mysql", "1.2.0"
github "netbeans", "1.0.0"
github "nsq", "1.0.1"
github "ntfs_3g", "1.0.0", :repo => "MoOx/puppet-ntfs_3g"
github "onepassword", "1.1.0"
github "onyx", "1.1.1"
github "openssl", "1.0.0"
github "opera", "0.3.1"
github "osx",        "2.2.2"
github "osxfuse", "1.1.0"
github "pcre", "1.0.0"
github "pgadmin3", "1.0.0"
github "php", "1.1.4"
github "phpstorm", "1.0.4"
github "pixman", "1.0.0"
github "postgresql", "3.0.0"
github "propane", "1.0.0"
github "property_list_key", "0.1.0"
github "protobuf", "1.0.0"
github "pycharm", "1.0.4"
github "python", "1.3.0"
github "quicksilver", "1.2.0"
github "rdio", "1.0.0"
github "redis", "2.1.0"
github "riak", "1.1.0"
github "rubymine", "1.1.0"
github "screen", "1.0.0"
github "sequel_pro", "1.0.1"
github "shiftit", "0.0.2"
github "skitch", "1.0.2"
github "skype", "1.0.8"
github "solr", "1.0.4"
github "sourcetree", "1.0.0"
github "spotify", "1.0.1"
github "statsd", "1.0.3"
github "sublime_text_2", "1.1.2"
github "swig", "1.0.0"
github "sysctl", "1.0.0"
github "thunderbird", "1.3.0"
github "tmux", "1.0.2"
github "transmission", "1.1.0"
github "tunnelblick", "1.0.4"
github "utorrent", "1.1.1"
github "vagrant", "3.0.3"
github "vim", "1.0.5"
github "virtualbox", "1.0.10"
github "vlc", "1.0.5"
github "vmware_fusion", "1.1.0"
github "wget", "1.0.0"
github "wuala", "0.0.1", :repo => "haelmy/puppet-wuala"
github "xctool", "0.0.1"
github "xpdf", "1.0.0"
github "zeromq", "1.0.0"
github "zookeeper", "1.0.2"
github "zsh", "1.0.0"
