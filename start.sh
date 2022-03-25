if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://git.heroku.com/clifford-bot-v4.git /clifford-bot-v4
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /clifford-bot-v4
fi
cd /clifford-bot-v4
pip freeze > requirements.txt
echo "Starting Bot...."
python3 bot.py
