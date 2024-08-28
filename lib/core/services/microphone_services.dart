import 'package:flutter/cupertino.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class MicrophoneHandler {
  final stt.SpeechToText speech = stt.SpeechToText();

  Future<void> initialize() async {
    var isPermissionGranted = await getMicrophonePermission();
    await handlePermissionResponse(isPermissionGranted: isPermissionGranted);
  }

  Future<bool> isSpeechRecognitionAvailable() async {
    await initialize();
    return await speech.initialize(
      onError: (error) {},
    );
  }

  Future<void> startSpeechRecognition(TextEditingController searchController) {
    return speech.listen(
      onResult: (result) {
        searchController.text = result.recognizedWords;
      },

      listenFor: const Duration(minutes: 1),
      // listenOptions: stt.SpeechListenOptions(cancelOnError: true),
      cancelOnError: true,
    );
  }

  Future<bool> getMicrophonePermission() async {
    return await speech.hasPermission;
  }

  Future<void> handlePermissionResponse({required bool isPermissionGranted}) async {
    if (isPermissionGranted) {
      Permission.microphone.request();
    } else {
      // Обработка случая, когда разрешение не предоставлено
    }
  }

  void dispose() {
    speech.cancel();
  }
}
