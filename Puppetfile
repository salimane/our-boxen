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

github "boxen",      "3.11.1"

# Support for default hiera data in modules

github "module_data", "0.0.4", :repo => "ripienaar/puppet-module-data"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "brewcask",   "0.0.7"
github "dnsmasq",    "2.0.1"
github "foreman",    "1.2.0"
github "gcc",        "3.0.2"
github "git",        "2.9.0"
github "homebrew",   "2.0.2"
github "hub",        "1.4.2"
github "inifile",    "1.5.0", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",      "1.7.0"
github "nodejs",     "5.0.7"
github "openssl",    "1.0.0"
github "phantomjs",  "3.0.0"
github "pkgconfig",  "1.0.0"
github "repository", "2.4.1"
github "vcsrepo",    "1.3.2", :repo => "puppetlabs/puppetlabs-vcsrepo"
github "ruby",       "8.5.6"
github "stdlib",     "4.9.1", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"
github "xquartz",    "1.2.1"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

# Please only add needed personal modules not available here in people_puppetfile
# sample in modules/people/puppetfile.rb.example
people_puppetfile = '/opt/boxen/repo/modules/people/puppetfile.rb'
eval(File.read(people_puppetfile)) if File.exist?(people_puppetfile)


github "alfred", "1.5.0"
github "atom", "1.3.0"
github "augeas", "1.3.1"
github "bash", "1.2.0"
github "btsync", "1.0.0"
github "charles", "1.1.0"
github "clojure", "1.3.0"
github "docker", "1.1.0"
github "dockutil", "0.2.1"
github "eclipse",    "2.5.0"
github "elasticsearch", "2.9.0"
github "erlang", "1.0.4"
github "fish", "1.0.0"
github "gdb", "1.0.0"
github "imagemagick", "1.3.0"
github "java",       "1.8.4"
github "jenkins", "1.2.0"
github "jmeter", "0.1.5"
github "kaleidoscope", "1.0.5", :repo => "ngs/puppet-kaleidoscope"
github "karabiner", "1.0.8"
github "memcached", "2.0.0"
github "mongodb", "2.6.1"
github "mysql", "2.2.2"
github "nsq", "1.0.1"
github "osx",        "2.8.0"
github "php", "2.0.1"
github "postgresql", "4.1.0"
github "property_list_key", "0.1.0"
github "python", "3.0.2", :repo => "mloberg/puppet-python"
github "redis", "4.0.1"
github "riak", "1.1.3"
github "solr", "1.0.4"
github "statsd", "1.0.3"
github "sublime_text", "1.1.1"
github "sysctl", "1.0.1"
github "vagrant", "3.3.4"
github "virtualbox", "1.0.13"
github "zeromq", "1.0.0"
github "zookeeper", "1.0.4"
github "zsh", "1.0.1"
