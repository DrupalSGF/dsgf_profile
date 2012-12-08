core = 7.x
api = 2

defaults[projects][subdir] = "contrib"

; Contrib
projects[] = addressfield
projects[] = colorbox
projects[] = context
projects[] = context_addassets
projects[] = context_inline_editor
projects[] = ctools
projects[] = date
projects[] = delta
projects[] = ds
projects[] = features
projects[] = github_connect
projects[] = libraries
projects[] = link
projects[] = logintoboggan
projects[] = omega_tools
projects[] = pathauto
projects[] = profile2
projects[] = strongarm
projects[] = token
projects[] = realname

; Themes
projects[] = ember
projects[] = omega
projects[sgf_theme][type] = "theme"
projects[sgf_theme][download][type] = "git"
projects[sgf_theme][download][url] = "http://github.com/DrupalSGF/sgf_theme.git"
