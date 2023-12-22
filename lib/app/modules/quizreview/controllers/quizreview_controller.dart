import 'package:get/get.dart';

class QuizreviewController extends GetxController {
  //TODO: Implement QuizreviewController
  final RxList<String> questions = [
    'Can you name the top 3 Premier League goal scorers?',
    'Name the clubs in England\'s top football division for the 2020–21 season.',
    'Which player scored the fastest hat-trick in the Premier League?',
    'Theodorus of Samos is the person who invented keys?',
    'Who are three players share the record for most Premier League red cards (8)?'
  ].obs;
  final RxList<String> answer =
      ['-', '-', 'Sadio Mane', 'True', 'Light Year'].obs;
  final RxList<bool> isAnswered = [false, false, true, true, true].obs;
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
