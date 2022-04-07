if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Zinan100/userbot-2.git /userbot-2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /userbot-2
fi
cd /userbot-2
pip freeze > requirements.txt
echo "Starting Bot...."
python3 bot.py
