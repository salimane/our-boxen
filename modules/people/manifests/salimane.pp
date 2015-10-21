#
class people::salimane {
  # include android::platform_tools
  include android::sdk
  android::version { '23':
    ensure  => present,
    options => ['platform', 'add_on'],
  }
  android::build_tools { '21.1.2': }
  # include android::tools
  include android::studio
  include atom
  atom::package { [
    'auto-detect-indentation', 'atom-alignment',
    'auto-update-packages', 'autocomplete-plus', 'color-picker',
    'command-logger', 'compare-files',
    'editor-stats', 'emmet', 'execute-as-ruby', 'file-icons', 'go-rename',
    'git-plus', 'language-docker', 'language-protobuf', 'go-plus',
    'language-gradle', 'language-jade', 'language-nginx',
    'language-puppet', 'language-swift',
    'linter', 'linter-puppet-lint', 'markdown-format',
    'minimap', 'minimap-git-diff', 'monokai', 'package-sync',
    'pdf-view', 'pretty-json',
    'quotes', 'save-session', 'sort-lines', 'toggle-quotes',
    'Sublime-Style-Column-Selection'
    ]:
  }

  osx::recovery_message { 'If this Mac is found, please call +4915732675528': }
  class { 'osx::global::natural_mouse_scrolling' : enabled => false }
  class { 'osx::dock::pin_position' : position => 'middle'}
  class {'osx::dock::icon_size' : size => 36}
  class {'osx::dock::position' : position => 'right'}

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
