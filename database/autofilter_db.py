# Give credits if u Like 😜.

import pymongo
from info import *

myclient = pymongo.MongoClient(DATABASE_URI)
mydb = myclient[DATABASE_NAME]
mycol = mydb.autodb

async def add_chat(chat_id):
    check = mycol.find_one({"chat_id": chat_id})
    if check:
        return False
    else:
        mycol.insert_one({"chat_id": chat_id})
        return True

async def remove_chat(chat_id):
    check = mycol.find_one({"chat_id": chat_id})
    if not check:
        return False
    else:
        mycol.delete_one({"chat_id": chat_id})
        return True

async def get_session(chat_id):
    check = mycol.find_one({"chat_id": chat_id})
    if not check:
        return False
    else:
        return check
