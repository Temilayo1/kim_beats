import 'package:flutter/material.dart';
import 'package:kim_beats/todo/models.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();

  //Keep track of how many TODO we have
  List<TodoModelClass> todos = [];

  // void _showInputFieldWidget(BuildContext context) {
  //   showDialog(
  //     context: context,
  //     barrierDismissible: false,
  //     builder: (context) => SimpleDialog(
  //       contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 24),
  //       title: Text(
  //         "Create TODO",
  //         style: TextStyle(
  //           color: Colors.black,
  //           fontSize: 16,
  //           fontWeight: FontWeight.w600,
  //         ),
  //       ),
  //       children: [
  //         const SizedBox(height: 24),
  //         TextFormField(
  //           controller: titleController,
  //           decoration: InputDecoration(
  //               hintText: "Eg. Eat Food",
  //               hintStyle: TextStyle(
  //                 color: Colors.grey,
  //                 fontSize: 12,
  //                 fontWeight: FontWeight.w400,
  //               )),
  //         ),
  //         const SizedBox(height: 24),
  //         TextFormField(
  //           controller: descController,
  //           maxLines: 5,
  //           decoration: InputDecoration(
  //               hintText: "What is your TODO for",
  //               hintStyle: TextStyle(
  //                 color: Colors.grey,
  //                 fontSize: 12,
  //                 fontWeight: FontWeight.w400,
  //               )),
  //         ),
  //         SizedBox(height: 50),
  //         ElevatedButton(
  //             onPressed: () {
  //               if (titleController.text.isNotEmpty &&
  //                   descController.text.isNotEmpty) {
  //                 setState(() {
  //                   todos.add(TodoModelClass(
  //                     title: titleController.text,
  //                     desc: descController.text,
  //                     dateTime: DateTime.now(),
  //                   ));
  //                 });
  //               }
  //               Navigator.pop(context);
  //             },
  //             child: Text(
  //               "SAVE",
  //               style: TextStyle(
  //                 color: Colors.white,
  //                 fontSize: 24,
  //                 fontWeight: FontWeight.w700,
  //               ),
  //             )),
  //         SizedBox(height: 20),
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    //Media query helps us get the device SIZE (height, width) property
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff0A0D22),
      appBar: AppBar(
        actions: [
          Icon(Icons.settings),
        ],
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
          size: 20,
        ),
        title: Text('My Doings'),
      ),
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 160.0),
                  child: Text(
                    "Welcome Back, TemiLayon",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.red
                        // image: DecorationImage(
                        //   fit: BoxFit.cover,
                        //   image: NetworkImage(
                        //     "https://images.pexels.com/photos/3489072/pexels-photo-3489072.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                        //     scale: 100.0,
                        //   ),
                        // ),
                        ),
                    height: size.height / 5,
                    //color: Colors.white38,
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          Container(
            height: size.height / 1.6,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
                color: Colors.white),
          ),
          // Spacer(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 14,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        onPressed: () {
          // // clear the controller value as soon as you tap on the FAB
          // titleController.clear();
          // descController.clear();
          // // _showInputFieldWidget(context);
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Scaffold(
                  body: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 210),
                            child: Text(
                              "Add a title",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          // const SizedBox(height: 14),
                          TextFormField(
                            controller: titleController,
                            decoration: InputDecoration(
                              // hintText: "Eg. Eat Food",
                              //  labelText: "Add a title",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 210),
                            child: Text(
                              "Pick a deadline",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Row(
                            children: [],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              });
        },
        tooltip: 'Add Todo',
        child: Icon(
          Icons.edit,
          size: 34,
        ),
      ),
    );
  }
}
