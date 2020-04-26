import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/task_data.dart';
import 'package:todoeyflutter/screens/add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/widgets/tasks_list.dart';
class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          child: Icon(Icons.add),
          onPressed: (){
            showModalBottomSheet(context: context, builder: (context)=>AddTaskScreen());
          }),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
          padding: EdgeInsets.only(top: 60.0,left: 30.0, right: 30.0, bottom: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.0,

                  child: Icon(Icons.list, size: 30.0,  color: Colors.lightBlueAccent,)),
              SizedBox(
                height: 10.0,
              ),
              Text('To do List',
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.w700,
                color: Colors.white
              ),),
              Text(Provider.of<TaskData>(context).taskCount.toString()+' Tasks', style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.white
              ),),

            ],
          ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight:  Radius.circular(20)),

              ),
              child: TasksList(),
            ),
          ),


        ],
    )
    );
  }
}




