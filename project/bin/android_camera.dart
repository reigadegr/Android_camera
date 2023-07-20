import 'dart:io';
import 'package:android_camera/android_camera.dart' as AC;

void main(List<String> arguments) {
  print('Hello world: ${AC.calculate()}!');
  launchCamera();
}

void launchCamera() async {
    
  ProcessResult result = await Process.run('am', ['start', 'com.android.camera/com.android.camera.Camera']);
  
  if (result.exitCode == 0) {
    print('成功启动');
  } else {
    print('启动失败');
  }
  
  print(fibonacci(20));
}

int fibonacci(int n) {
  // 基准情况，当n为0或1时，直接返回n
  if (n == 0 || n == 1) 
      return n;

  // 递归调用，计算前两个数之和
  return fibonacci(n - 1) + fibonacci(n - 2);
}

