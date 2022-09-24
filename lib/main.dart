Future<List<int>> server() {
  return Future<List<int>>.delayed(
      const Duration(seconds: 2), () => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
}

void main() async {
  List data = [];

  print("\nWait for respose...");

  data = await server();

  print("\n---------data sucsessfully sent ---------");

  print("\nData is");
  for (int i = 0; i < data.length; i++) {
    print("=>  ${data[i]}");
  }

  print("\n-----------------------------------------");
}
