import 'package:dev/story.dart';

class StoryBrain {
  int _index = 0;

  final List<Story> _storyData = [
    Story(
        storyTitle:
        'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        choice1: 'I\'ll hop in. Thanks for the help!',
        choice2: 'Better ask him if he\'s a murderer first.'),
    Story(
        storyTitle: 'He nods slowly, unphased by the question.',
        choice1: 'At least he\'s honest. I\'ll climb in.',
        choice2: 'Wait, I know how to change a tire.'),
    Story(
        storyTitle:
        'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        choice1: 'I love Elton John! Hand him the cassette tape.',
        choice2: 'It\'s him or me! You take the knife and stab him.'),
    Story(
        storyTitle:
        'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
        'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
        'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        choice1: 'Restart',
        choice2: '')
  ];

  String get getStory {
    return _storyData[_index].storyTitle;
  }

  String get getChoice1 {
    return _storyData[_index].choice1;
  }

  String get getChoice2 {
    return _storyData[_index].choice2;
  }

  void nextStory(int choice){
    if (_index == 0){
      if (choice == 1){
        _index = 2;
      } else {
        _index = 1;
      }
    } else if (_index == 1){
      if (choice == 1){
        _index = 2;
      } else {
        _index = 3;
      }
    } else if (_index == 2){
      if (choice == 1){
        _index = 5;
      } else {
        _index = 4;
      }
    } else {
      _index = 0;
    }
  }

  bool isVisible() {
    if ((_index == 0) || (_index == 1) || (_index == 2)){
      return true;
    } else {
      return false;
    }
  }
}
