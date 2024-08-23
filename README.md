# Chatbot-with-GUI
A Python-based chatbot with a MySQL database for storing and retrieving conversational responses.

**Summary**

This project provides a basic chatbot GUI application built with Python, Tkinter, and MySQL. The chatbot responds to user input using predefined rules stored in a MySQL database.

**Features**

Intuitive GUI interface with input field and response display

Chatbot responds to user input using predefined rules stored in a MySQL database

Supports entity, intent, sentiment, context, and follow-up question-based responses

Easy to customize and extend with new response rules

**Installation and Setup**

**_Prerequisites_**

Python 3.x

Tkinter (built-in Python library)

MySQL Connector/Python (install with pip install mysql-connector-python)

MySQL database (create a new database and import the provided chat.sql file)

XAMPP control panel (for setting up the MySQL database)

**_Setup_**

Clone this repository: git clone https://github.com/your-username/chatbot-gui.git

Install required libraries: pip install mysql-connector-python

Create a new MySQL database using XAMPP control panel

Import the provided chat.sql file into the new database

Update the cnx connection settings in chatbot_gui.py to match your MySQL database credentials

Run the application: python chatbot_gui.py

**Database Configuration**

The provided chat.sql file contains the database schema and sample data for the responses table. To set up the database:

Open XAMPP control panel and start the MySQL server

Create a new database and import the chat.sql file

Update the cnx connection settings in chatbot_gui.py to match your MySQL database credentials

**Usage and Interaction**

Run the application and enter your name in the input field

Click "Start Chat" to initiate the conversation

Type a message in the input field and click "Send" to receive a response from the chatbot

The chatbot will respond based on the predefined rules in the MySQL database

**Customization and Extension**

To add new response rules, simply insert new rows into the responses table in your MySQL database. The columns are:

_input:_ the user input that triggers the response

_response:_ the chatbot's response to the user input

_entity:_ the entity associated with the response (optional)

_intent:_ the intent associated with the response (optional)

_sentiment:_ the sentiment associated with the response (optional)

_context:_ the context associated with the response (optional)

_follow_up_question:_ a follow-up question to ask the user (optional)

**Contributing**

We welcome contributions to this project! If you'd like to help improve the chatbot or add new features, please follow these steps:

Fork this repository to your own GitHub account

Create a new branch for your changes

Make your changes and commit them with a descriptive message

Submit a pull request to this repository

**Troubleshooting**

If you encounter any issues while setting up or using the chatbot, please check the following:

Make sure you have the correct MySQL database credentials and connection settings

Verify that the chat.sql file has been imported correctly into your MySQL database

Check the chatbot's log files for any error messages or debugging information

**Acknowledgments**

This project was inspired by various open-source chatbot projects and tutorials. We'd like to thank the developers and maintainers of these projects for their contributions to the chatbot community.
