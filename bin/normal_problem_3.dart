Future<int> getNumber(int value) async {
  if (value > 0) {
    await Future.delayed(Duration(milliseconds: 100));
    return value;
  } else {
    throw Exception("Value must be positive");
  }
}

Future<int> safeGetNumber(int value) async {
  try {
    return await getNumber(value);
  } catch (e) {
    return 0;
  }
}

void main() async {
  print(await safeGetNumber(10));
  print(await safeGetNumber(-10));
}
