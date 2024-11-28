import 'package:flutter/material.dart';

class AddTaskPage extends StatelessWidget {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController detailsController = TextEditingController();

  AddTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('إضافة مهمة جديدة'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: 'عنوان المهمة'),
            ),
            TextField(
              controller: detailsController,
              decoration: const InputDecoration(labelText: 'تفاصيل المهمة'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final taskTitle = titleController.text;
                if (taskTitle.isNotEmpty) {
                  Navigator.pop(context, taskTitle);
                }
              },
              child: const Text('إضافة'),
            ),
          ],
        ),
      ),
    );
  }
}