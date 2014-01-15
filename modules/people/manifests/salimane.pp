class people::salimane {
  include zsh   # requires zsh  module in Puppetfile
  include firefox::beta
  include virtualbox
  include java
  include heroku
  include eclipse::java
  include chrome::canary
  include iterm2::dev
  include sublime_text_2
  sublime_text_2::package {
    'Emmet':
      source => 'sergeche/emmet-sublime';
    'Alignment':
      source => 'wbond/sublime_alignment';
    'SublimeRailsNav':
      source => 'noklesta/SublimeRailsNav';
    'sublime-gem-browser':
      source => 'NaN1488/sublime-gem-browser';
    'BracketHighlighter':
      source => 'facelessuser/BracketHighlighter';
    'DocBlockr':
      source => 'spadgos/sublime-jsdocs';
    'SideBarEnhancements':
      source => 'titoBouzout/SideBarEnhancements';
    'SublimeCodeIntel':
      source => 'SublimeCodeIntel/SublimeCodeIntel';
    'SublimeLinter/SublimeLinter':
      source => 'SublimeLinter/SublimeLinter';
    'eddorre/SublimeERB':
      source => 'eddorre/SublimeERB';
    'SublimeText2RailsRelatedFiles':
      source => 'luqman/SublimeText2RailsRelatedFiles';
    'Rspec':
      source => 'SublimeText/RSpec';
    'Guard':
      source => 'cyphactor/sublime_guard';
    'Haml':
      source => 'phuibonhoa/handcrafted-haml-textmate-bundle';
    'Sass':
      source => 'nathos/sass-textmate-bundle';
    'Coffescript':
      source => 'Xavura/CoffeeScript-Sublime-Plugin';
    'RubyTest':
      source => 'maltize/sublime-text-2-ruby-tests';
    'WebInspector':
      source => 'sokolovstas/SublimeWebInspector';
    'MarkdownPreview':
      source => 'revolunet/sublimetext-markdown-preview';
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

  include libreoffice
  #include gpg2
  include htop
  include heroku_toolbelt
  include sourcetree
  class { 'lastpass':
    #require => [Class['chrome'], Class['firefox']]
  }
  include pgadmin3
  include caffeine
  include gimp
  include quicksilver
  #include archiver
  include diffmerge
  include htop
  include limechat
  include osxfuse
  include ntfs_3g
  include wuala

  include dockutil
  dockutil::item { 'Add iTerm':
    item     => "/Applications/iTerm.app",
    label    => "iTerm",
    action   => "add",
    position => 7,
  }
  dockutil::item { 'Add Skype':
    item     => "/Applications/Skype.app",
    label    => "Skype",
    action   => "add",
    position => 11,
  }

  # include go
  # go::version { '1.1.1': }
  # include go::1_1

}
