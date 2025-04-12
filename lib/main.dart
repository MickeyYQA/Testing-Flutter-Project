import 'package:flutter/material.dart';
import 'profilePage.dart';
import 'settingsPage.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int pageIndex = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void incrementFive() {
    setState(() {
      _counter += 5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: pageIndex == 0 ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Text('hello'),
            ElevatedButton(
              onPressed: incrementFive,
              child: Text('Increment Five'),
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfilePage(),
                    )
                  );
                },
                child: Text('bonjour')),
            Image.network("https://img1.baidu.com/it/u=3963363225,1398814048&fm=253&fmt=auto&app=138&f=JPEG?w=1494&h=800"),
            Image.asset("images/boeing.jpg"),
          ],
        ): pageIndex == 1 ? ProfilePage() : loginPage(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: "phone",
          ),
          
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: "login",
          ),
        ],
        currentIndex: pageIndex,
        onTap: (int index){
          setState(() {
            pageIndex = index;
            print(pageIndex);
          });
        }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
