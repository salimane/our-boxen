class people::salimane {
  include zsh   # requires zsh  module in Puppetfile
  include firefox::beta
  include virtualbox
  include java
  include heroku
  include eclipse::java
  include chrome::dev
  include iterm2::dev
  include sublime_text_2
  sublime_text_2::package { 'Emmet':
    source => 'sergeche/emmet-sublime'
  }
  include python
  include appcleaner
  include transmission
  include xpdf
  include wget
  #sysctl::set { 'somekey':
    #value => 'somevalue'
  #}
  include sysctl::ipforwarding
  include screen
  include graphviz
#  include sourcetree
  include dropbox
  include vagrant
  include spotify
  include vlc
  include github_for_mac
  include imageoptim
  include clipmenu
  include tmux
  include magican
  include ccleaner
  include adium
  include google_notifier
  include secondbar
  include skype

  $ruby_version = '2.0.0'
  class { 'ruby::global':
    version => $ruby_version
  }
  
  ruby::gem { "puppet for ${version}":
    gem     => 'puppet',
    ruby    => $ruby_version,
  }

  ruby::gem { "librarian-puppet for ${version}":
    gem     => 'librarian-puppet',
    ruby    => $ruby_version,
  } 
  
  $home     = "/Users/${::luser}"
  $src       = "${home}/src"
  $dotfiles = "${src}/dotfiles"

  repository { $dotfiles:
    source  => 'salimane/dotfiles',
    require => File[$src]
  }
}
