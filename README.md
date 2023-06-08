# Soorvay

This is an application that allows you create quiz or questionaire and can be used
for educational purposes

Features include:

ability to create quiz to your preference,
ability to creates survey questions tailored to your needs.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

What it would contain
1. A database to store questions
2. Keep track of previous quiz session
3. Should have an identifier to create a session
4. A create question screen # to create questions 
5. A create session to use created questions

Database view would be like 
# Keeps track of all session
Session Tracker >> hostid >> session

Question Bank >> question type >> QuestionModel(
id #each set of question would have the same id
questions 
answer
class
quiz subject (biology, english, e.t.c)
)

question type = qiuz or questionaire
