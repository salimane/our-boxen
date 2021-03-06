#
class people::salimane {
  include atom
  atom::package { [
    'Sublime-Style-Column-Selection', 'atom-alignment',
    'auto-detect-indentation',
    'auto-update-packages', 'color-picker', 'command-logger', 'compare-files',
    'editor-stats', 'emmet', 'execute-as-ruby', 'file-icons', 'fixmyjs',
    'git-plus', 'go-plus', 'go-rename', 'jshint', 'language-docker',
    'language-gradle', 'language-jade', 'language-nginx', 'language-protobuf',
    'language-puppet', 'language-swift', 'linter', 'linter-puppet-lint',
    'minimap', 'minimap-git-diff', 'monokai',
    'package-sync', 'pdf-view', 'quotes', 'save-session',
    'sort-lines', 'toggle-quotes'
    ]:
  }

  include sublime_text
  sublime_text::package { 'Emmet':
    source => 'sergeche/emmet-sublime'
  }

  osx::recovery_message { 'If this Mac is found, please call +4915732675528': }
  class { 'osx::global::natural_mouse_scrolling' : enabled => false }
  class { 'osx::dock::pin_position' : position => 'middle'}
  class {'osx::dock::icon_size' : size => 36}
  class {'osx::dock::position' : position => 'right'}

  ensure_resource('homebrew::tap', [
    'homebrew/command-not-found',
    'homebrew/dupes',
    'homebrew/x11',
    'caskroom/versions',
    'caskroom/fonts',
    'caskroom/eid'
    ]
  )

  ensure_resource('ruby::version', '2.2.3') # install a ruby version

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
