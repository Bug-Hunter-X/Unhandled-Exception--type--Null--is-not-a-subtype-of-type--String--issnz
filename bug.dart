```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the API returns a JSON list
      final List<dynamic> jsonData = jsonDecode(response.body);
      // Accessing the data directly without null checks
      final String name = jsonData[0]['name']; //Potential error here. 
      print('Name: $name');
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```