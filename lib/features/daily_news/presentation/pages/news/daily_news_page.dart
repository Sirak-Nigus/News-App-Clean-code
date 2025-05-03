import 'package:flutter/material.dart';

class DailyNewsPage extends StatelessWidget {
  const DailyNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      title: const Text('Daily News'),
      centerTitle: true,
    );
  }

  _buildBody() {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: 10,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                    flex: 2,
                    child: Image.network(
                      'https://picsum.photos/250?image=9',
                      height: 120,
                    )),
                const SizedBox(width: 10),
                const Expanded(
                  flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. dksksd sjdkfjn'),
                      Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
