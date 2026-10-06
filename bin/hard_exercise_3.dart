Future<String> runTask(String name, int milliseconds) async {
  await Future.delayed(Duration(milliseconds: milliseconds));
  return "Task $name completed";
}

Future<List<String>> runTasks() async {
  Future<String> taskA = runTask("A", 100);
  Future<String> taskB = runTask("B", 50);
  Future<String> taskC = runTask("C", 150);
  String a = await taskA;
  String b = await taskB;
  String c = await taskC;
  return [a, b, c];
}

void main() async {
  List<String> result = await runTasks();
  print(result);
}
