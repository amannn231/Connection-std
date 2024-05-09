import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Form'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var arrContacts = [
    'Dev Angiras(sir)',
    'Anupam',
    'Abhishek patel',
    'Suraj',
    'Saksham',
    'Sushant',
    'Sashi',
    'Sudeep',
    'Kishan',
    'Krishna',
    'Mridul',
    'Piyush',
    'vimlesh',
    'Aman',
    'Shiwang',
    'Mihir',
  ];

//call back fuction
  callBack() {
    print("Submitted.");
  }

  var emailText = TextEditingController();
  var passText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Padding(
          padding: EdgeInsets.only(left: 203),
          child: Text(
            widget.title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextField(
              keyboardType: TextInputType.emailAddress,
              controller: emailText,
              enabled: true,
              decoration: InputDecoration(
                hintText: "email",
                suffixText: "email",
                suffixIcon: Icon(Icons.email),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.blueAccent),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(color: Colors.black)),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: BorderSide(color: Colors.blueGrey),
                ),
              ),
            ),
            Container(height: 10),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              obscuringCharacter: "*",
              controller: passText,
              decoration: InputDecoration(
                hintText: "password",
                suffixText: "password",
                suffixIcon: Icon(Icons.password),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.redAccent),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(color: Colors.black)),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: BorderSide(color: Colors.blueGrey),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                String uemail = emailText.text.toString();
                String upass = passText.text;
                print("email: $uemail, pass: $upass");
              },
              child: Text("Submit"),
            ),
            Container(height: 50),
            ElevatedButton(onPressed: callBack, child: Text("CallBck")),
          ]),
        ),
      ),
    );
  }
}
