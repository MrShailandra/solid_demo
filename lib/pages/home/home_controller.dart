import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:get/get.dart';

import 'package:solid_demo/utils/utils.dart';

class HomeController extends GetxController {
  final count = 0.obs;
  Rx<Color> currentColor = const Color(0xFF0E7AC7).obs;
  RxBool isPlaying = false.obs;
  bool canVibrate = false;

  changeColor() {
    if (canVibrate) {
      // For Vibrate
      Vibrate.feedback(FeedbackType.selection);
    }
    currentColor.value = Utils.randomColor();
  }

  changeColorTimer() {
    // This Function will generate random time and update color on screen.
    Timer(Utils.randomTime(), () {
      currentColor.value = Utils.randomColor();
      if (isPlaying.value) {
        changeColorTimer();
      }
    });
  }

  updatePlayingTimer() {
    // For Stop and On Auto Color Change
    if (canVibrate) {
      Vibrate.feedback(FeedbackType.selection);
    }
    isPlaying.value = !isPlaying.value;
    changeColorTimer();
  }

  @override
  Future<void> onInit() async {
    canVibrate = await Vibrate.canVibrate;
    super.onInit();
  }
}
