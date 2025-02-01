```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Correctly handle the response here, for example:
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      // Handle non-200 status codes
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during the API call, don't just print the error
    print('Error fetching data: $e');
    // Consider re-throwing the exception or handling it more gracefully based on your app's needs.
    rethrow; // Re-throw to allow higher-level error handling
  }
}
```