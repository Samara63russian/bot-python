from bot.bot import Bot
from bot.handler import MessageHandler

TOKEN = "001.1029821311.0795396128:8926074361"

bot = Bot(token=TOKEN)

def message_cb(bot, event):
    bot.send_text(chat_id=event.from_chat, text=event.text)

bot.dispatcher.add_handler(MessageHandler(callback=message_cb))
bot.start_polling()
bot.idle()