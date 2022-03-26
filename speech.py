from setuptools import Command
import speech_recognition as sr
listener = sr.Recognizer()

try:
    with sr.Microphone() as source :
        print("Listening ...")
        voice = listener.listen(source)
        command = listener.recognize_google(voice)
        command = command.lower()
        if 'hello' in command:
            print(command)
            # print("It is working")
    
except:
    pass