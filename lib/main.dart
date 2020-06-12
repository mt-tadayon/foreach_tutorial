import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> myFriends = ['Felix', 'Amanda', 'Sebastian'];
  int color;

  @override
  void initState() {
    color = 0xffd4c8e1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('.forEach() Method'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.color_lens),
        onPressed: () {
          myFriends.forEach((friend) {
            color = 0xffe8a49c;
          });
          setState(() {});
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Click on the button to change the background color'),
            SizedBox(
              height: 20,
            ),
            ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (BuildContext context, int index) => Divider(),
              itemCount: myFriends.length,
              itemBuilder: (context, int index) {
                return Container(
                  color: Color(color),
                  child: ListTile(
                    title: Text(
                      myFriends[index],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
