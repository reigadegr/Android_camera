import 'dart:io';
import 'package:android_camera/android_camera.dart' as android_camera;

void main(List<String> arguments) {
  print('Hello world: ${android_camera.calculate()}!');
  launchCamera();
}

void launchCamera() async {
  ProcessResult result = await Process.run('am', ['start', 'com.android.camera/com.android.camera.Camera']);
  
  if (result.exitCode == 0) {
    print('成功启动');
  } else {
    print('启动失败');
  }
}