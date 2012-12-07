core = 7.x
api = 2

defaults[projects][subdir] = "contrib"

; Contrib
projects[] = colorbox
projects[] = context
projects[] = context_inline_editor
projects[] = ctools
projects[] = libraries
projects[] = omega_tools
projects[] = pathauto
projects[] = strongarm
projects[] = token
projects[] = features

; Themes
projects[] = omega
projects[sgf_theme][type] = "theme"
projects[sgf_theme][download][type] = "git"
projects[sgf_theme][download][url] = "git://github.com/DrupalSGF/sgf_theme.git"
