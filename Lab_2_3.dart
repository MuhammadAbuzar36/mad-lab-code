import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
      home: UserInfo()
  ));
}


class UserInfo extends StatelessWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Info'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name:',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  'Abu Zar Bhatti',
                  style: Theme.of(context).textTheme.headline5,
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Roll No.:',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  '19SW36',
                  style: Theme.of(context).textTheme.headline5,
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Department:',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  'Software Engineering',
                  style: Theme.of(context).textTheme.headline5,
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Batch:',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  '19SW',
                  style: Theme.of(context).textTheme.headline5,
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Domicile:',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  'Sanghar',
                  style: Theme.of(context).textTheme.headline5,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}