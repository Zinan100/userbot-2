if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://git.heroku.com/evamariatgokdabot.git /evamariatgokdabot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /evamariatgokdabot
fi
cd /evamariatgokdabot
pip freeze > requirements.txt
echo "Starting Bot...."
python3 bot.py
