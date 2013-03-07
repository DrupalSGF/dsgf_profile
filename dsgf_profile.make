core = 7.x
api = 2

defaults[projects][subdir] = "contrib"

; Contrib
projects[] = addressfield
projects[] = boxes
projects[] = captcha
projects[] = colorbox
projects[] = context
projects[] = context_addassets
projects[] = context_inline_editor
projects[] = ctools
projects[] = date
projects[] = delta
projects[] = ds
projects[] = entity
projects[] = features
projects[] = fences
projects[] = libraries
projects[] = link
projects[] = navbar
projects[] = oauth
projects[] = omega_tools
projects[] = pathauto
projects[] = strongarm
projects[] = token
projects[] = views

; Themes
projects[] = shiny
projects[] = omega
projects[sgf_theme][type] = "theme"
projects[sgf_theme][download][type] = "git"
projects[sgf_theme][download][url] = "http://github.com/DrupalSGF/sgf_theme.git"

