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
  mod name, :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.3.8"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",    "1.0.1"
github "foreman",    "1.0.0"
github "gcc",        "2.0.100"
github "git",        "1.3.7"
# github "go",         "2.0.1"
github "homebrew",   "1.6.0"
github "hub",        "1.3.0"
github "inifile",    "1.0.0", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",      "1.4.3"
github "nodejs",     "3.5.0"
github "openssl",    "1.0.0"
github "phantomjs",  "2.1.0"
github "pkgconfig",  "1.0.0"
github "repository", "2.2.0"
github "ruby",       "7.1.6"
github "stdlib",     "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"
github "xquartz",    "1.1.1"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "adium", "1.3.0"
github "android", "1.1.0"
github "appcleaner", "1.0.0"
github "archiver", "1.0.0", :repo => "singuerinc/puppet-archiver"
github "augeas", "1.3.1"
github "automake", "1.0.0"
github "btsync", "1.0.0"
github "caffeine", "1.0.0"
github "calibre", "2.0.0"
github "ccleaner", "1.1.0"
github "chrome",     "1.1.2"
github "cinch", "1.0.1"
github "clipmenu", "1.0.0"
github "cmake", "1.0.1"
github "diffmerge", "0.0.5", :repo => "DorkScript/puppet-diffmerge"
github "dockutil", "0.1.2"
github "eclipse",    "2.2.0"
github "eclipse-plugin-egit", "0.0.5", :repo => "steinim/puppet-eclipse-plugin-egit"
github "firefox",    "1.1.7"
github "gdb", "1.0.0"
github "gimp", "1.0.0", :repo => "fschwiet/puppet-gimp"
github "github_for_mac", "1.0.1"
github "google_notifier", "1.0.1"
github "graphviz", "1.0.0"
github "heroku", "2.1.1"
github "htop", "1.0.0",  :repo => "skottler/puppet-htop"
github "imagemagick", "1.2.1"
github "imageoptim", "0.0.2"
github "inkscape", "1.0.3"
github "iterm2",     "1.0.6"
github "java",       "1.2.0"
github "keepassx", "1.0.0"
github "lastpass", "1.1.0", :repo => "dieterdemeyer/puppet-lastpass"
github "libevent", "0.0.1", :repo => "enthooz/puppet-libevent"
github "libpng", "1.0.0"
github "libreoffice", "4.1.4"
github "licecap", "1.0.0"
github "limechat", "1.2.0", :repo => "dieterdemeyer/puppet-limechat"
github "magican", "1.0.2"
github "mr", "1.0.1"
github "ntfs_3g", "1.0.0", :repo => "MoOx/puppet-ntfs_3g"
github "onyx", "1.1.1"
github "open_refine", "1.0.0"
github "osx", "2.2.2"
github "osxfuse", "1.1.0"
github "pcre", "1.0.0"
github "pgadmin3", "0.0.3", :repo => "dennisreimann/puppet-pgadmin3"
github "pixman", "1.0.0"
github "propane", "1.0.0"
github "property_list_key", "0.1.0"
github "python", "1.3.0"
github "quicksilver", "1.0.1", :repo => "dieterdemeyer/puppet-quicksilver"
github "screen", "1.0.0"
github "sequel_pro", "1.0.1"
github "skitch", "1.0.2"
github "skype", "1.0.8"
github "sourcetree", "1.0.1", :repo => "ncarroll/puppet-sourcetree"
github "spotify", "1.0.1"
github "sublime_text_2", "1.1.2"
github "swig", "1.0.0"
github "sysctl", "1.0.0"
github "tmux", "1.0.2"
github "transmission", "1.0.0"
github "tunnelblick", "1.0.4"
github "vagrant", "3.0.3"
github "virtualbox", "1.0.10"
github "vlc", "1.0.5"
github "wget", "1.0.0"
github "wuala", "0.0.1", :repo => "haelmy/puppet-wuala"
github "xpdf", "1.0.0"
github "zsh", "1.0.0"
