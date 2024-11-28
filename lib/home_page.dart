import 'package:flutter/material.dart';
import 'add_task_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> tasks = [];

  void addTask(String task) {
    setState(() {
      tasks.add(task);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Do Tasks'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(tasks[index]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () async {
                final newTask = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddTaskPage()),
                );
                if (newTask != null) {
                  addTask(newTask);
                }
              },
              child: const Text('إضافة مهمة'),
            ),
          ),
        ],
      ),
    );
  }
}