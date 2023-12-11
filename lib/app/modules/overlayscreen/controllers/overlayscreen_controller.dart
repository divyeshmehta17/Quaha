import 'dart:async';

import 'package:get/get.dart';

class OverlayscreenController extends GetxController {
  final RxInt elapsedSeconds = 0.obs;
  Timer? timer;

  @override
  void onInit() {
    super.onInit();
    startTimer();
  }

  void startTimer() {
    const totalDurationInSeconds = 3600; // 1 hour in seconds

    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      elapsedSeconds.value = timer.tick;
      if (elapsedSeconds.value >= totalDurationInSeconds) {
        timer.cancel();
      }
    });
  }

  String get formattedTime {
    final hours = elapsedSeconds.value ~/ 3600;
    final minutes = (elapsedSeconds.value % 3600) ~/ 60;
    final seconds = elapsedSeconds.value % 60;

    final hoursStr = hours.toString().padLeft(2, '0');
    final minutesStr = minutes.toString().padLeft(2, '0');
    final secondsStr = seconds.toString().padLeft(2, '0');

    return '$hoursStr:$minutesStr:$secondsStr';
  }

  @override
  void onClose() {
    timer?.cancel(); // Cancel the timer when the controller is closed
    super.onClose();
  }
}
