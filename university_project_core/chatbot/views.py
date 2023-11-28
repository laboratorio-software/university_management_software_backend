# chatbot/views.py
import csv
from rest_framework.views import APIView
from rest_framework.response import Response
from .chatbot import chatbot


class ChatbotAPIView(APIView):
    def load_menu_data(self):
        menu_path = 'path/to/menu.csv'  # Ruta real a tu archivo CSV de menú
        with open(menu_path, 'r', encoding='utf-8') as csv_file:
            csv_reader = csv.DictReader(csv_file)
            menu_data = {}
            for row in csv_reader:
                option_type = row['type']
                message = row['message']
                father_option = row['father_option']

                if option_type == 'greeting':
                    menu_data['greeting'] = message
                elif option_type == 'option':
                    menu_data.setdefault('options', []).append({'message': message, 'suboptions': []})
                elif option_type == 'suboption':
                    for option in menu_data['options']:
                        if option['message'] == father_option:
                            option['suboptions'].append({'message': message})

        return menu_data

    def load_response_data(self):
        response_path = 'path/to/respuestas.csv'  # Ruta real a tu archivo CSV de respuestas
        with open(response_path, 'r', encoding='utf-8') as csv_file:
            csv_reader = csv.DictReader(csv_file)
            response_data = {}
            for row in csv_reader:
                question = row['question']
                answer = row['answer']
                response_data[
                    question.lower()] = answer  # Convertir a minúsculas para hacer la comparación insensible a mayúsculas

        return response_data

    def get(self, request, *args, **kwargs):
        menu_data = self.load_menu_data()

        # Construir el mensaje de bienvenida con el menú
        welcome_message = f"{menu_data['Greeting']}\n\nOpciones disponibles:\n"
        for i, option in enumerate(menu_data['options'], start=1):
            welcome_message += f"{i}. {option['message']}\n"
            for j, suboption in enumerate(option['suboptions'], start=1):
                welcome_message += f"   {i}.{j}. {suboption['message']}\n"

        return Response({'message': welcome_message})

    def post(self, request, *args, **kwargs):
        user_message = request.data.get(
            'message').lower()  # Convertir a minúsculas para hacer la comparación insensible a mayúsculas
        response_data = self.load_response_data()

        # Comprobar si hay una respuesta personalizada para la pregunta
        if user_message in response_data:
            response_message = response_data[user_message]
        else:
            response = chatbot.get_response(user_message)
            response_message = str(response)

        return Response({'message': response_message})
