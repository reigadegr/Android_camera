int calculate() {
  return 6 * 7;
}
void launchCamera() async {
  ProcessResult result = await Process.run('am', ['start', 'com.android.camera/com.android.camera.Camera']);
  
  if (result.exitCode == 0) {
    print('成功启动');
  } else {
    print('启动失败');
  }
}