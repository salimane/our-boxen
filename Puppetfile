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

github "boxen",      "3.0.4"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",    "1.0.0"
# github "foreman",    "1.0.0"
github "gcc",        "2.0.1"
github "git",        "1.3.2"
# github "go",         "1.0.0"
github "homebrew",   "1.4.1"
github "hub",        "1.0.3"
github "inifile",    "1.0.0", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",      "1.4.2"
github "nodejs",     "3.3.0"
github "openssl",    "1.0.0"
github "phantomjs",  "2.0.2"
github "pkgconfig",  "1.0.0"
github "repository", "2.2.0"
github "ruby",       "6.5.0"
github "stdlib",     "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"
github "xquartz",    "1.1.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.
github "osx",        "1.6.0"
github "pkgconfig", "1.0.0"
github "swig", "1.0.0"
github "pcre", "1.0.0"
github "zsh",        "1.0.0"
github "firefox",    "1.1.3"
github "virtualbox", "1.0.6"
github "java",       "1.1.2"
github "heroku",     "2.0.0"
github "eclipse",    "2.2.0"
github "chrome",     "1.1.1"
github "iterm2",     "1.0.3"
github "sublime_text_2", "1.1.2"
github "python", "1.2.1"
github "appcleaner", "1.0.0"
github "transmission", "1.0.0"
github "xpdf", "1.0.0"
github "wget", "1.0.0"
github "sysctl", "1.0.0"
github "screen", "1.0.0"
github "graphviz", "1.0.0"
github "vagrant", "2.0.13"
github "spotify", "1.0.1"
github "vlc", "1.0.5"
github "github_for_mac", "1.0.1"
github "imageoptim", "0.0.2"
github "clipmenu", "1.0.0"
github "tmux", "1.0.2"
github "magican", "1.0.2"
github "ccleaner", "1.1.0"
github "adium", "1.2.0"
github "google_notifier", "1.0.1"
github "secondbar", "1.0.1"
github "skype", "1.0.6"
github "libreoffice", "4.0.4",  :repo => "jasonamyers/puppet-libreoffice"
github "sequelpro",  "1.0.1",  :repo => "huahang/puppet-sequelpro"
github "htop",  "1.0.0",  :repo => "skottler/puppet-htop"
github "heroku_toolbelt", "1.2.0", :repo => "dieterdemeyer/puppet-heroku_toolbelt"
github "sourcetree", "1.0.1", :repo => "ncarroll/puppet-sourcetree"
github "lastpass", "1.1.0", :repo => "dieterdemeyer/puppet-lastpass"
github "pgadmin3", "0.0.3", :repo => "dennisreimann/puppet-pgadmin3"
github "caffeine", "1.0.0"
github "gimp", "1.0.0", :repo => "fschwiet/puppet-gimp"
github "eclipse-plugin-egit", "0.0.5", :repo => "steinim/puppet-eclipse-plugin-egit"
github "xtrafinder", "1.0.1", :repo => "dieterdemeyer/puppet-xtrafinder"
github "quicksilver", "1.0.1", :repo => "dieterdemeyer/puppet-quicksilver"
github "archiver", "1.0.0", :repo => "singuerinc/puppet-archiver"
github "libevent", "0.0.1", :repo => "enthooz/puppet-libevent"
github "diffmerge", "0.0.5", :repo => "DorkScript/puppet-diffmerge"
github "limechat", "1.2.0", :repo => "dieterdemeyer/puppet-limechat"
github "go", "1.0.1"
github "osxfuse", "1.1.0", :repo => "jverdeyen/puppet-osxfuse"
github "ntfs_3g", "1.0.0", :repo => "MoOx/puppet-ntfs_3g"
github "wuala", "0.0.1", :repo => "haelmy/puppet-wuala"
