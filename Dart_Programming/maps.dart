main() {
  var _questionIndex = 0;
  var questions = [
    {
      "questiontext": "What's your favourite color?",
      "answer": ["Red", "Greeen", "Blue"]
    },
    {
      "questiontext": "What's your favourite animal?",
      "answertext": ["Dog", "Rabbit", "Elephant"]
    },
    {
      "questiontext": "Have you been to India?",
      "answer": ["Yup", "Nope", "Waste Country :)"]
    },
    {
      "questiontext": "Have you visited TamilNadu :)",
      "answer": ["Yup", "Nope", "Waste Country :)"]
    },
    {
      "questiontext": "Do you Know Tamilarasan?",
      "answer": ["Yup", "Nope", "Waste Country :)"]
    },
    {
      "questiontext":
          "Do you agree, that Tamilarasan is a Stupid Useless Idiot?",
      "answer": ["yes, He is stupid", "No", "May be"]
    },
  ];
  for (var i = 0; i < 5; i++)
    print(questions[_questionIndex++]['questiontext']);
}
