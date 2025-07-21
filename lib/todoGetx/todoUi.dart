import 'package:first_project/todoGetx/todoController.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

class HomePages extends StatelessWidget{

  final ToDoController taskController =Get.put(ToDoController());
  final TextEditingController textController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ToDo'),centerTitle: true,),

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: textController,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
              ),
            ),

            GestureDetector(
              child: ElevatedButton(onPressed: (){
                taskController.addTask(textController.text);
                textController.clear();
              }, child: Text('Task')),
            ),

            Expanded(
              child: Obx(()=>ListView.builder(
                itemCount: taskController.task.length,
                itemBuilder: (context,index){
                  final tasks= taskController.task[index];
                  return ListTile(
                    title: Text(tasks.title,
                    style: TextStyle(
                      decoration: tasks.isDone?
                      TextDecoration.lineThrough:
                      TextDecoration.none
                    ),),
              
                    leading: Checkbox(value: tasks.isDone, 
                    onChanged: (_){
                      taskController.toggleDone(index);
                    }),
              
                    trailing: IconButton(onPressed: (){
                      taskController.removeTask(index);
                    }, icon: Icon(Icons.delete)),
                  );
                }
                )),
            )
          ],
        ),
      ),
    );
  }

}