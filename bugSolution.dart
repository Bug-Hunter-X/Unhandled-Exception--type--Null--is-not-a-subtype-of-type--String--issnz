```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final List<dynamic>? jsonData = jsonDecode(response.body);

      // Check if jsonData is not null and the list contains at least one element
      if (jsonData != null && jsonData.isNotEmpty) {
        // Check if jsonData[0] and jsonData[0]['name'] are not null before accessing
        final String? name = jsonData[0]['name'];
        if (name != null) {
          print('Name: $name');
        } else {
          print('Name property is null.');
        }
      } else {
        print('JSON data is null or empty.');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```