#!/bin/bash

cat > ~/.netrc << EOF
machine api.heroku.com
  login $HEROKU_LOGIN
  password $HEROKU_API_KEY
EOF

mkdir -p ~/.ssh
cat > ~/.ssh/config << EOF
VerifyHostKeyDNS yes
StrictHostKeyChecking no
EOF

git config --global url."https://heroku:$HEROKU_API_KEY@git.heroku.com/".insteadOf heroku:
heroku git:remote -a $HEROKU_APP_NAME