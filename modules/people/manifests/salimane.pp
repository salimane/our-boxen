class people::salimane {
  include adium # https://adium.im/
  include android::platform_tools
  include android::sdk
  include android::tools
  android::extra { 'extra-google-google_play_services': }
  include android::doc
  include android::studio
  include appcleaner # http://www.freemacsoft.net/appcleaner/

  include btsync # http://labs.bittorrent.com/experiments/sync.html
  include caffeine # http://lightheadsw.com/caffeine/
  include calibre # http://calibre-ebook.com/
  include ccleaner # http://www.piriform.com/mac/ccleaner
  include chrome::canary
  include cinch # http://www.irradiatedsoftware.com/cinch
  include clipmenu # http://www.clipmenu.com/
  include dockutil
  include firefox::beta
  include gimp # http://www.gimp.org/
  include graphviz # http://www.graphviz.org/
  include heroku # http://heroku.com/
  class { 'intellij': # http://www.jetbrains.com/idea/
    edition => 'community',
  }
  include iterm2::dev
  include iterm2::colors::solarized_dark
  include keepassx # http://www.keepassx.org/
  include lastpass # https://lastpass.com/
  include libreoffice # http://www.libreoffice.org/
  include licecap # http://www.cockos.com/licecap/
  include magican # http://www.magicansoft.com/
  include moreutils # http://joeyh.name/code/moreutils/
  include opera::developer
  include opera::mobile
  osx::recovery_message { 'If this Mac is found, please call 015732675528': }
  include osx::dock::2d
  include osx::dock::hide_indicator_lights
  include osx::finder::show_all_on_desktop
  class { 'osx::global::natural_mouse_scrolling': enabled => false }
  class { 'osx::dock::pin_position': position => 'middle'}
  class {'osx::dock::icon_size': size => 36}
  class {'osx::dock::position': position => 'right'}

  include osxfuse # http://osxfuse.github.io/
  include propane # http://propaneapp.com/
  ruby::version { '2.1.0': } # install a ruby version
  include sequel_pro # http://www.sequelpro.com/ mysql gui admin
  include skitch # https://github.com/boxen/puppet-skitch
  include spotify # https://www.spotify.com/
  include sublime_text_2 # http://www.sublimetext.com//
  sublime_text_2::package {
    'Alignment': source                     => 'wbond/sublime_alignment';
    'BracketHighlighter': source            => 'facelessuser/BracketHighlighter';
    'Coffescript': source                   => 'Xavura/CoffeeScript-Sublime-Plugin';
    'DocBlockr': source                     => 'spadgos/sublime-jsdocs';
    'eddorre/SublimeERB': source            => 'eddorre/SublimeERB';
    'Emmet': source                         => 'sergeche/emmet-sublime';
    'Guard': source                         => 'cyphactor/sublime_guard';
    'Haml': source                          => 'phuibonhoa/handcrafted-haml-textmate-bundle';
    'MarkdownPreview': source               => 'revolunet/sublimetext-markdown-preview';
    'Rspec': source                         => 'SublimeText/RSpec';
    'RubyTest': source                      => 'maltize/sublime-text-2-ruby-tests';
    'Sass': source                          => 'nathos/sass-textmate-bundle';
    'SideBarEnhancements': source           => 'titoBouzout/SideBarEnhancements';
    'sublime-gem-browser': source           => 'NaN1488/sublime-gem-browser';
    'SublimeCodeIntel': source              => 'SublimeCodeIntel/SublimeCodeIntel';
    'SublimeLinter/SublimeLinter': source   => 'SublimeLinter/SublimeLinter';
    'SublimeRailsNav': source               => 'noklesta/SublimeRailsNav';
    'SublimeText2RailsRelatedFiles': source => 'luqman/SublimeText2RailsRelatedFiles';
    'WebInspector': source                  => 'sokolovstas/SublimeWebInspector';
  }

  include sysctl::ipforwarding
  include tmux # http://tmux.sourceforge.net/
  include tunnelblick # http://code.google.com/p/tunnelblick/
  include vlc # http://www.videolan.org/vlc/index.html
  include wuala # https://www.wuala.com/
  include zsh # Installs zsh and makes it your default shell. For justice.

  repository { "${boxen::config::srcdir}/dotfiles":
    source => 'salimane/dotfiles'
  }
}
