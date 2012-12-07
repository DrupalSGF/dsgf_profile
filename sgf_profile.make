core = 7.x
api = 2

defaults[projects][subdir] = "contrib"

; Contrib
projects[] = colorbox
projects[] = context
projects[] = context_addassets
projects[] = context_inline_editor
projects[] = ctools
projects[] = libraries
projects[] = omega_tools
projects[] = pathauto
projects[] = strongarm
projects[] = token
projects[] = features
projects[] = link
projects[] = date
projects[] = addressfield
projects[] = realname
projects[] = profile2
projects[] = logintoboggan
projects[] = github_connect
projects[] = ds
projects[] = delta

; Themes
projects[] = ember
projects[] = omega
projects[sgf_theme][type] = "theme"
projects[sgf_theme][download][type] = "git"
projects[sgf_theme][download][url] = "http://github.com/DrupalSGF/sgf_theme.git"
