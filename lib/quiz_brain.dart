import 'questions.dart';

class QuizBrain{
  int _i = 0;
  List<Question> _questionbank = [
    Question(q:'1. Two particles repel each other it means that they have same charge.', a: true),
    Question(q:'2. Charge has a relativistic property like the mass.', a: false ),
    Question(q:'3. As charge is quantized, and the formula is Q=(+/-)ne and n is a whole number', a: false ),
    Question(q:'4. Electron and proton has same charge', a: true ),
    Question(q:'5. The value of epsilon in free space is 8.85 x 10^-12.', a: true ),
    Question(q:'6. Unlike gravitational force, the electric force doesn\'t follow inverse square law', a: false ),
    Question(q:'7. Relative permittivity is the ratio of permittivity of free space to the permittivity of a medium ', a: false ),
    Question(q:'8. Coulomb\'s force is a vector quantity ', a: true ),
    Question(q:'9. Two balls have charge of 1 microcoulomb are separated by distance x, the force among them is of 10N. The distance x is 3.5cm', a: false ),
    Question(q:'10. An charged ball has charge of 8.61x10^-11 filled with electrons, the number of electrons are 6x10^5.', a: true ),
    Question(q:'Count your score and press TRUE to complete it!', a: true ),
  ];
  void nextQuestion()
  {
    if(_i < _questionbank.length - 1)
      _i++;
  }
  String getQuestionText()
  {
    return _questionbank[_i].questiontext;
  }

  bool getCorrectAnswer()
  {
    return _questionbank[_i].qanswer;
  }
  bool isFinished(){
    if(_i>=_questionbank.length-1)
      {
        print('Now returning true');
        return true;
      }
    else {
      return false;
    }
  }
  void reset(){
    _i=0;
  }
}