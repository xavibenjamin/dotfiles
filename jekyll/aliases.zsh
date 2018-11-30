# Building Jekyll Aliases

alias jwd="bundle exec jekyll serve --limit_posts 10 --future --drafts -o"
alias jw="bundle exec jekyll serve -o"
alias jw20="bundle exec jekyll serve --limit_posts 20 -o"
alias jprod="JEKYLL_ENV=production bundle exec jekyll serve --config _config_production.yml -o"

# Jekyll Compose Aliases

alias jcd="bundle exec jekyll draft"
alias jcp="bundle exec jekyll publish"
