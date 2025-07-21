import 'package:first_project/todoGetx/model.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ToDoController extends GetxController{
  var task=<Task>[].obs;

  void addTask(String titles){
    task.add(Task(title: titles));
  }

  void removeTask(int index){
    task.removeAt(index);
  }

  void toggleDone(int index){
    task[index].isDone=!task[index].isDone;
    task.refresh();
  }
}