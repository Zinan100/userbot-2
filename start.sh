echo "Cloning Repo, Please Wait..."
git clone -b master https://github.com/Jackandoggy/0.git /0
cd /0
echo "Installing Requirements..."
pip3 install -U -r requirements.txt
echo "Starting Bot, Please Wait..."
python3 bot.py
