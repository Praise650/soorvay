import 'package:soorvay/core/model/option_model.dart';

import '../model/question_model.dart';

List<QuestionModel> surveyQuestionsList = [
  QuestionModel(
    question: 'What is your favourite sport',
    options: [
      Option(answer: 'Football'),
      Option(answer: 'Basketball'),
      Option(answer: 'Volleyball'),
      Option(answer: 'Tennis'),
      Option(answer: 'Formula one'),
    ],
  ),
  QuestionModel(
    question: 'Who is your favourite SportMan',
  ),
  QuestionModel(
    question: 'Which of the following best describe your current relationship',
    options: [
      Option(answer: 'Married'),
      Option(answer: 'Widowed'),
      Option(answer: 'Divorced'),
      Option(answer: 'Separated'),
      Option(answer: 'Single, Never Married'),
    ],
  ),
  QuestionModel(
    question: 'Why do you love the sport you chose',
  ),
  QuestionModel(
    question: 'How often do you use our products?',
    options: [
      Option(answer: 'Very often'),
      Option(answer: 'often'),
      Option(answer: 'Occasionally'),
      Option(answer: 'Not at all'),
    ],
  ),
  QuestionModel(
    question: 'Which features are most valuable to you',
  ),
  QuestionModel(
    question: 'How easy is it to use our product?',
    options: [
      Option(answer: 'Very easy'),
      Option(answer: 'Easy'),
      Option(answer: 'Not Easy'),
      Option(answer: 'Hard'),
    ],
  ),
  QuestionModel(
    question: 'How would you compare our products to our competitors’?',
  ),
  QuestionModel(
    question: 'What other types of people could find our product useful?',
  ),
  QuestionModel(
    question: 'How would you rate the value for money?',
    options: [
      Option(answer: '1-3'),
      Option(answer: '4-6'),
      Option(answer: '7-9'),
      Option(answer: '10'),
    ],
  ),
  QuestionModel(
    question: 'What important features are we missing?',
  ),
  QuestionModel(
    question: 'What are you trying to solve by using our product?',
  ),
  QuestionModel(
    question: 'How likely are you to recommend this product to others?',
    options: [
      Option(answer: 'Very Likely'),
      Option(answer: 'Likely'),
      Option(answer: 'Just Maybe'),
      Option(answer: 'Not at all'),
    ],
  ),
  QuestionModel(
    question: 'How could we improve our product to better meet your needs?',
  ),
];
