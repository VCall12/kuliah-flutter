import 'package:flutter/material.dart';





class QuotesPage extends StatelessWidget {
  final List<Map<String, dynamic>> _quotes = [
    {
      'quote': 'Life is a journey, not a destination.',
      'icon': Icons.directions_walk,
    },
    {
      'quote': 'Believe you can and you\'re halfway there.',
      'icon': Icons.thumb_up,
    },
    {
      'quote': 'The only way to do great work is to love what you do.',
      'icon': Icons.work,
    },
    {
      'quote':
          'In the end, we only regret the chances we didn\'t take.',
      'icon': Icons.sentiment_very_satisfied,
    },
    {
      'quote':
          'I have not failed. I\'ve just found 10,000 ways that won\'t work.',
      'icon': Icons.error,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Quotes Of The Day'),
        leading: Container(),
      ),
      body: ListView.builder(
        itemCount: _quotes.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              leading: Icon(_quotes[index]['icon']),
              title: Text(_quotes[index]['quote']),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text("Back"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
