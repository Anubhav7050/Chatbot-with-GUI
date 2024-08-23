#!/usr/bin/env python
# coding: utf-8

# In[1]:


import tkinter as tk
from tkinter import messagebox
import mysql.connector

# Connect to the MySQL database
cnx = mysql.connector.connect(
    user='root',
    password='',
    host='localhost',
    database='chat'
)
cursor = cnx.cursor()

class ChatbotGUI:
    def __init__(self, master):
        self.master = master
        master.title("Chatbot")
        master.geometry("500x400")

        self.username_label = tk.Label(master, text="Enter your name:")
        self.username_label.pack()

        self.username_entry = tk.Entry(master, width=40)
        self.username_entry.pack()

        self.start_button = tk.Button(master, text="Start Chat", command=self.start_chat)
        self.start_button.pack()

        self.input_label = tk.Label(master, text="You:")
        self.input_label.pack()

        self.input_entry = tk.Entry(master, width=40)
        self.input_entry.pack()

        self.send_button = tk.Button(master, text="Send", command=self.send_message)
        self.send_button.pack()

        self.response_label = tk.Label(master, text="Chatbot:")
        self.response_label.pack()

        self.response_text = tk.Text(master, width=65, height=10)
        self.response_text.pack()

        self.username = ""

    def start_chat(self):
        self.username = self.username_entry.get()
        self.response_text.insert(tk.END, f"Hi {self.username}! I'm Chatbot. How can I help you today?\n")
        self.username_entry.pack_forget()
        self.start_button.pack_forget()
        self.username_label.pack_forget()

    def send_message(self):
        user_input = self.input_entry.get()
        response = self.get_response(user_input)
        self.response_text.insert(tk.END, f"{self.username}: {user_input}\n")
        self.response_text.insert(tk.END, response + "\n")
        self.input_entry.delete(0, tk.END)

    def get_response(self, user_input):
        cursor.execute("SELECT * FROM responses WHERE input LIKE %s", (user_input,))
        result = cursor.fetchone()
        if result:
            response = result[1]
            entity = result[2]
            intent = result[3]
            sentiment = result[4]
            context = result[5]
            follow_up_question = result[6]
            
            # Respond based on the entity
            if entity:
                return f"Entity: {entity}\nResponse: {response}"
            
            # Respond based on the intent
            if intent:
                return f"Intent: {intent}\nResponse: {response}"
            
            # Respond based on the sentiment
            if sentiment:
                return f"Sentiment: {sentiment}\nResponse: {response}"
            
            # Respond based on the context
            if context:
                return f"Context: {context}\nResponse: {response}"
            
            # Respond with a follow-up question
            if follow_up_question:
                return f"Follow-up question: {follow_up_question}"
        else:
            return "I didn't understand that. Please try again!"

root = tk.Tk()
my_gui = ChatbotGUI(root)
root.mainloop()

# Close the cursor and connection
cursor.close()
cnx.close()


# In[2]:


pip install mysql-connector


# In[ ]:




