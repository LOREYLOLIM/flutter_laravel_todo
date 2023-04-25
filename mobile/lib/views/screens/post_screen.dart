import 'package:flutter/material.dart';
import 'package:mobile/controllers/db_controllers.dart';
import 'package:mobile/views/screens/home_screen.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  final _postname = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Post Something'),
          actions: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(
                  Icons.arrow_back,
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                controller: _postname,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Activity',
                  hintText: 'Type Todays Activity here',
                ),
              ),
            ),
            ElevatedButton(
              child: Text('Post Activity'),
              onPressed: () async {
                // var post_name = "Not Today";
                var response = await BaseClient()
                    .store('store', _postname.text)
                    .catchError((err) {});
                if (response == null) {
                } else {}
                debugPrint('Successful:');
              },
            )
          ],
        ));
  }
}
