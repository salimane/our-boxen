#
class people::salimane {
  # include adium # https://adium.im/
  # include android::platform_tools
  include android::sdk
  # include android::tools
  include android::studio
  # include appcleaner # http://www.freemacsoft.net/appcleaner/
  # include arduino
  # include arduino::beta
  include atom
  atom::package { [
    'RubyMotion', 'Sublime-Style-Column-Selection', 'atom-alignment',
    'atom-lint', 'atom-spotify', 'auto-detect-indentation',
    'auto-update-packages', 'autocomplete-plus', 'color-picker', 'command-logger', 'compare-files',
    'editor-stats', 'emmet', 'execute-as-ruby', 'expand-selection-to-quotes', 'file-icons',
    'fizzy', 'git-plus', 'html-helper', 'language-docker', 'language-dockerfile',
    'language-gradle', 'language-jade', 'language-nginx', 'language-puppet', 'language-swift',
    'linter', 'linter-python-pep8', 'linter-python-pyflakes', 'markdown-format',
    'minimap', 'minimap-git-diff', 'monokai', 'package-sync', 'pdf-view', 'pretty-json',
    'quotes', 'remember-session', 'sassbeautify', 'sort-lines', 'toggle-quotes'
    ]:
  }
  # include btsync # http://labs.bittorrent.com/experiments/sync.html
  # include caffeine # http://lightheadsw.com/caffeine/
  # include calibre # http://calibre-ebook.com/
  # include ccleaner # http://www.piriform.com/mac/ccleaner
  # include chrome::beta
  # include cinch # http://www.irradiatedsoftware.com/cinch
  # include clipmenu # http://www.clipmenu.com/
  # include dash # http://kapeli.com/dash
  # include dockutil
  # include docker
  # include firefox::beta
  # include foreman
  # include gimp # http://www.gimp.org/
  include go
  class { 'go::global' :
    version => '1.4'
  }
  # include googledrive
  # include graphviz # http://www.graphviz.org/
  # include hipchat
  # include heroku # http://heroku.com/
  # class { 'intellij': # http://www.jetbrains.com/idea/
  #   edition => 'community',
  # }
  # include iterm2::dev
  # include iterm2::colors::solarized_dark
  # include keepassx # http://www.keepassx.org/
  # include lastpass # https://lastpass.com/
  # include libreoffice # http://www.libreoffice.org/
  # include licecap # http://www.cockos.com/licecap/
  # include magican # http://www.magicansoft.com/
  # include moreutils # http://joeyh.name/code/moreutils/
  # include nmap
  # include opera::developer
  # include opera::mobile
  osx::recovery_message { 'If this Mac is found, please call +4915732675528': }
  # include osx::dock::2d
  # include osx::dock::hide_indicator_lights
  # include osx::finder::show_all_on_desktop
  class { 'osx::global::natural_mouse_scrolling' : enabled => false }
  class { 'osx::dock::pin_position' : position => 'middle'}
  class {'osx::dock::icon_size' : size => 36}
  class {'osx::dock::position' : position => 'right'}

  # include osxfuse # http://osxfuse.github.io/
  # include packer
  # include parallels
  # include propane # http://propaneapp.com/
  ensure_resource('ruby::version', '2.2.1') # install a ruby version
  # include sequel_pro # http://www.sequelpro.com/ mysql gui admin
  # include skitch # https://github.com/boxen/puppet-skitch
  # include spectacle
  # include spotify # https://www.spotify.com/
  # include sysctl::ipforwarding
  # include tor
  # include tmux # http://tmux.sourceforge.net/
  # include tunnelblick # http://code.google.com/p/tunnelblick/
  # include vlc # http://www.videolan.org/vlc/index.html
  # include wkhtmltopdf
  # include zsh # Installs zsh and makes it your default shell. For justice.

  $dotfiles = "${boxen::config::srcdir}/dotfiles"
  repository { $dotfiles:
    source => "${::github_login}/dotfiles",
  }
  exec { 'install dotfiles':
    provider => shell,
    command  => 'make install',
    cwd      => $dotfiles,
    creates  => "${::home}/.zshrc",
    require  => Repository[$dotfiles],
  }

}
