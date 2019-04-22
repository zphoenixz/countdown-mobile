import 'package:flutter/material.dart';
import 'classes/userWeek.dart';

class MySchedulePage extends StatefulWidget {
  // final Color color;
  MySchedulePage(/* this.color) */);

  @override
  State<StatefulWidget> createState() {
    return _MySchedulePageState(/* color */);
  }
}

class _MySchedulePageState extends State<MySchedulePage> {
  // final Color color;
  // _MySchedulePageState(this.color);

  @override
  void initState() {
    super.initState();
    print("init blank");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose blank");
  }

  // List<List<String>> weekState = [
  //   [' ', 'L', 'M', 'M', 'J', 'V', 'S'],
  //   ['', ' ', ' ', 'T', ' ', ' ', ' '],
  //   ['B', 'T', ' ', ' ', ' ', 'B', ' '],
  //   [' ', ' ', ' ', 'B', ' ', ' ', 'T'],
  //   [' ', ' ', 'T', ' ', ' ', 'T', ' '],
  //   [' ', ' ', ' ', ' ', ' ', ' ', 'B'],
  //   [' ', ' ', ' ', ' ', 'T', ' ', ' '],
  //   ['P1',' ', ' ', ' ', ' ', ' ', ' '],
  // ];

  Widget _buildGridItem(int x, int y) {
    UserWeek week = UserWeek(0, [111, 112, 113, 114, 115]);

    switch (weekState[x][y]) {
      case '':
        return Text('');
        break;
      case 'P1':
        return Container(
          color: Colors.blue,
        );
        break;
      case 'P2':
        return Container(
          color: Colors.yellow,
        );
        break;
      case 'T':
        return Icon(
          Icons.terrain,
          size: 40.0,
          color: Colors.red,
        );
        break;
      case 'B':
        return Icon(Icons.remove_red_eye, size: 40.0);
        break;
      default:
        return Text(weekState[x][y].toString());
    }
  }

  Widget _buildGridItems(BuildContext context, int index) {
    int gridStateLength = weekState.length;
    int x, y = 0;
    x = (index / gridStateLength).floor();
    y = (index % gridStateLength);
    return GestureDetector(
      // onTap: () => _gridItemTapped(x, y),
      child: GridTile(
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 0.5)),
          child: Center(
            child: _buildGridItem(x, y),
          ),
        ),
      ),
    );
  }

  Widget _buildGameBody() {
    int gridStateLength = weekState.length;
    return Column(children: <Widget>[
      AspectRatio(
        aspectRatio: 1.0,
        child: Container(
          padding: const EdgeInsets.all(8.0),
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              // border: Border.all(color: Colors.black, width: 2.0)
              ),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: gridStateLength,
            ),
            itemBuilder: _buildGridItems,
            itemCount: gridStateLength * gridStateLength,
          ),
        ),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    // double screenWidth = MediaQuery.of(context).size.width;

    return new Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 210, 185),
      body: _buildGameBody(),
    );
  }
}
