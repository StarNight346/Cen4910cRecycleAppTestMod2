import 'dart:html';

import 'package:flutter/material.dart';
import './Selection.dart';

var selectionNumber = 0;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  String mystring = "";
  MyAppState myAppState = MyAppState();
 
    State<StatefulWidget> createState(){
      myAppState = MyAppState();
    // TODO: Implement createState
    return myAppState;
    }
}


class MyAppState extends State<MyApp> {

List<Widget> widgetList = [];

List<Widget> choosePage(selectionNumber) {
  widgetList.clear();
  if (selectionNumber == 0) {
      widgetList.add(Text("What do you want to do?"));
      widgetList.add(Selection("Barcode Scanner", 1, selectionNumber, makeSelection));
      widgetList.add(Selection("Search Bar", 2, selectionNumber, makeSelection));
      widgetList.add(Selection("Request a new bin", 3, selectionNumber, makeSelection));
      widgetList.add(Selection("Recycling 101", 4, selectionNumber, makeSelection));
      widgetList.add(Selection("Ways to Recycle", 5, selectionNumber, makeSelection));
      widgetList.add(Selection("The impact", 6, selectionNumber, makeSelection));
      } else if (selectionNumber == 1) {
        widgetList.add(Text("You did it! 1"));
      } else if (selectionNumber == 2) {
        widgetList.add(Text("You did it! 2"));
      } else if (selectionNumber == 3) {
        widgetList.add(Text("You did it! 3"));
      } else if (selectionNumber == 4) {
        widgetList.add(Text("You did it! 4"));
      } else if (selectionNumber == 5) {
        widgetList.add(Text("You did it! 5"));
      } else if (selectionNumber == 6) {
        widgetList.add(Text("You did it! 6"));
      } else {
        widgetList.add(Text("Error out of range"));
      }
      return widgetList;      
}

makeSelection(screenNumber) {
  //selectionNumber = screenNumber;
  //choosePage(selectionNumber);
  setState(() {
    selectionNumber = screenNumber;
  });
}


  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Orlando Recycles!"),
        ),
        body: Column(
          children: choosePage(selectionNumber)
        ),
    )
    );
  }
}





// import 'dart:html';

// import 'package:flutter/material.dart';
// import './Selection.dart';

// var selectionNumber = 0;

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget{
//   @override

//     State<StatefulWidget> createState(){
//     // TODO: Implement createState
//     return MyAppState();
//     }
// }


// class MyAppState extends State<MyApp> {

// List<Widget> widgetList = [];

// List<Widget> choosePage() {
//   widgetList.clear();
//   if (selectionNumber == 0) {
//       widgetList.add(Text("What do you want to do?"));
//       widgetList.add(Selection("Barcode Scanner", 1, selectionNumber));
//       widgetList.add(Selection("Search Bar", 2, selectionNumber));
//       widgetList.add(Selection("Request a new bin", 3, selectionNumber));
//       widgetList.add(Selection("Recycling 101", 4, selectionNumber));
//       widgetList.add(Selection("Ways to Recycle", 5, selectionNumber));
//       widgetList.add(Selection("The impact", 6, selectionNumber));
//       } else if (selectionNumber == 1) {
//         widgetList.add(Text("You did it! 1"));
//       } else if (selectionNumber == 2) {
//         widgetList.add(Text("You did it! 2"));
//       } else if (selectionNumber == 3) {
//         widgetList.add(Text("You did it! 3"));
//       } else if (selectionNumber == 4) {
//         widgetList.add(Text("You did it! 4"));
//       } else if (selectionNumber == 5) {
//         widgetList.add(Text("You did it! 5"));
//       } else if (selectionNumber == 6) {
//         widgetList.add(Text("You did it! 6"));
//       } else {
//         widgetList.add(Text("Error out of range"));
//       }
//       return widgetList;      
// }

// void makeSelection(screenNumber) {
//   setState(() {
//     selectionNumber = screenNumber;
//     choosePage();
//   });
// }


//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Orlando Recycles!"),
//         ),
//         body: Column(
//           children: choosePage()
//         ),
//     )
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
