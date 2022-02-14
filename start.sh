if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://git.heroku.com/0 /0
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /0
fi
cd /0
pip freeze > requirements.txt
echo "Starting Bot...."
python3 bot.py
