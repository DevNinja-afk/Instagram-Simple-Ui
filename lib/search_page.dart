import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> buttons = [
      'IGTV',
      'NATURE',
      'TRAVE',
      'DECOR',
      'STYLE',
      'FOOD',
      'BEAUTY',
      'ART',
    ];
    Future<void> onRefresh() async {
      await Future.delayed(Duration(seconds: 1));
    }

    return RefreshIndicator(
      onRefresh: onRefresh,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search',
                    contentPadding: EdgeInsets.all(0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    fillColor: Color.fromRGBO(220, 220, 220, 1),
                    filled: true),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.person_add),
                ),
              ],
            ),
            SliverAppBar(
              title: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    8,
                    (index) => Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(primary: Colors.black),
                        onPressed: () {},
                        child: Text(buttons[index]),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
