
import 'package:hive_flutter/hive_flutter.dart';
class ToDoDataBase {


  List toDoList = [] ;



  // reference our boxx 
  final _myBox = Hive.box('mybox');
  // run this method if this is the 1st time ever opening thid app 
  void createInitialData(){
    toDoList = [
      ["Sample 1" , false],
      ["Sample 2" , false],
    ];
  }
    // load the data from database 
    void loadData (){
      toDoList = _myBox.get("TODOLIST");
    }

    // update the database 
    void updateDataBase(){
      _myBox.put("TODOLIST", toDoList);
    }
  }
