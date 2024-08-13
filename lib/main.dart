import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({required this.title, super.key});

  // Fileds in a weiget subclass are always marked "final".

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(color: Colors.blue[500]),
      // Row is a horizontal, linear layout.
      child: Row(
        children: [
          const IconButton(
            icon: Icon(Icon.menu),
            tooltip: 'Navigation menu',
            onPressed: null,
          ),
          // Expanded expands its child to fill the available space
          Expanded(
            child: title,
          ),
          const IconButton(
            icon: Icon(const Icon.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

class MyScafford extends StatelessWidget {
  const MyScafford({super.key});

  @override
  Widget build(BuildContext context) {
    // Material is a conceptual piece of paper on which the UI appears.
    return Material(
      // Column is a vertical, linear layout.
      child: Column(
        children: [
          MyAppBar(
            title: Text('Example title',
                style: Theme.of(context).primaryTextTheme.titleLarge),
          ),
          const Expanded(
            child: Text('Hello, world!'),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      title: "My app",
      home: SafeArea(
        child: MyScafford(),
      ),
    ),
  );
}
