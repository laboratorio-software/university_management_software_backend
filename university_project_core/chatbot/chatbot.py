# chatbot.py
from chatterbot import ChatBot
from chatterbot.trainers import ChatterBotCorpusTrainer

chatbot = ChatBot('UniversidadBot')

trainer = ChatterBotCorpusTrainer(chatbot)
trainer.train('chatterbot.corpus.spanish')  # Entrenar con corpus en español

# Esto sirve para entrenar el chatbot con un set propio de datos
# trainer.train('path/to/custom_dataset.csv')
