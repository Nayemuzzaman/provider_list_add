import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_provider_list/models/taskmodel.dart';
import 'package:flutter_provider_list/providers/listshowModel.dart';
import 'package:provider/provider.dart';

class ListScreeen extends StatefulWidget {
   ListScreeen({Key? key}) : super(key: key);

  @override
  State<ListScreeen> createState() => _ListScreeenState();
}

class _ListScreeenState extends State<ListScreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[900],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "List Application",
          style: TextStyle(
            color: Colors.amber,
            fontSize: 10,
          ),
        ),
        leading: Icon(Icons.menu),
      ),
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Text(
                "List show Design",
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 45,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Learning Purpose",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(60)),
                color: Colors.white),
            child: Consumer<ListShowModel>(
              builder: (BuildContext context, lstShows, child) {
              return ListView.builder(
                  itemCount: lstShows.taskList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: ListTile(
                        contentPadding: EdgeInsets.only(
                            left: 32, right: 32, top: 8, bottom: 8),
                        title: Text(
                          lstShows.taskList[index].title,
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          lstShows.taskList[index].detail,
                          style: TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(
                          Icons.check_circle,
                          color: Colors.greenAccent,
                        ),
                      ),
                      margin: EdgeInsets.only(bottom: 8, left: 16, right: 16),
                    );
                  });
            }),
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
           Provider.of<ListShowModel>(context, listen: false).addTaskInList();
        },
      ),
    );
  }
}
