import 'question.dart';

class QuizBrain {
  int _count = 0;
  List<Question> _questionBank = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
    Question('The Atlantic Ocean is the largest ocean on the planet.', false),
    Question('Conductors have low resistance.', true),
    Question('Sharks are mammals.', false),
    Question('The study of stars is called astronomy.', true),
    Question('Human skeleton consists of 205 bones.', false),
    Question(
        'Mount K2 is the second largest mountain peak in the world.', true),
    Question('Mercury is the closest planet to the Sun.', true),
    Question('You cannot cry in space.', true),
    Question('Some animals can get a sunburn.', true),
  ];
  void nextQuestion() {
    if (_count < _questionBank.length - 1) {
      _count++;
    }
  }

  String getQuestionText() {
    return _questionBank[_count].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_count].questionAnswer;
  }

  bool isFinished() {
    if (_count >= _questionBank.length - 1) {
      // print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _count = 0;
  }
}
