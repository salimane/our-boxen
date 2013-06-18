class people::salimane {
  include zsh   # requires emacs module in Puppetfile
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
  
  
  $home     = "/Users/${::luser}"
  $src       = "${home}/src"
  $dotfiles = "${src}/dotfiles"

  repository { $dotfiles:
    source  => 'salimane/dotfiles',
    require => File[$src]
  }
}
