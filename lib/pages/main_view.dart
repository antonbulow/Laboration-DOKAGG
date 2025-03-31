import 'package:flutter/material.dart';
import 'package:lab1/pages/add_veiw.dart';
import 'package:lab1/widgets/task_list.dart';



class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To-Do'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),

      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text('DAT216/TIG091'),
      //       Text('Lab1 Todos'),
      //     ],
        body: TaskList(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                    builder: (context) => AddView(),
              ),
            );
          },
          tooltip: 'Add To-Do',
          child: const Icon(Icons.add),
      )
    );
  }
}
