# Use fig and visualjeff/ember-cli docker image to run ember-cli

# Does not work correctly, temporarly disabled, waiting for better idea
#alias npm='fig --file ~/.ember-cli.fig.yml run --rm npm'
#alias bower='fig --file ~/.ember-cli.fig.yml run --rm bower'
#alias ember='fig --file ~/.ember-cli.fig.yml run --rm ember'

#sails() {
#  if [ "$1" = "lift" ]
#  then
#    docker run -t -i -e USER_UID=1000 -e USER_GID=1000 -p 1337:1337 -v "$(pwd):/usr/src/app" --entrypoint /usr/local/bin/as_user --rm cbliard/sails-ember-cli /usr/local/bin/sails lift
#  else
#    fig --file ~/.sails.fig.yml run --rm sails "$@"
#  fi
#}
