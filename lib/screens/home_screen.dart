// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:news/models/screens.dart';
import 'package:news/widgets/news_item.dart';
import 'package:news/widgets/main_drawer.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSearching = false;
  final FocusNode searchFocusNode = FocusNode();

  ScrollController _scrollController = ScrollController();
  List<String> items = []; // List<String>.generate(10, (i) => 'Item $i');
  bool isLoading = false;
  bool isAllLoaded = false;

  pagenation() async {
    if (isAllLoaded) {
      return;
    }
    setState(() {
      isLoading = true;
    });
    await Future.delayed(const Duration(milliseconds: 500));
    List<String> newData = items.length >= 60
        ? []
        : List.generate(5, (index) => 'Item ${index + items.length}');
    if (newData.isNotEmpty) {
      items.addAll(newData);
    }

    setState(() {
      isLoading = false;
      isAllLoaded = false;
    });
  }

  @override
  void initState() {
    super.initState();
    pagenation();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
              _scrollController.position.maxScrollExtent &&
          !isLoading) {
        pagenation();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
    searchFocusNode.dispose();
    items = [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(24, 24, 24, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(32, 32, 32, 1),
        title: isSearching
            ? TextField(
                focusNode: searchFocusNode,
                cursorColor: Colors.white,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                decoration: const InputDecoration(
                  hintText: "Searching...",
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  border: InputBorder.none,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 3, horizontal: 2),
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                onSubmitted: (e) {})
            : const Text('News'),
        actions: <Widget>[
          isSearching
              ? IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    setState(() {
                      isSearching = !isSearching;
                    });
                  })
              : IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    setState(() {
                      isSearching = !isSearching;
                      searchFocusNode.requestFocus();
                    });
                  }),
        ],
      ),
      drawer: MainDrawer(Screens.Home),
      body: items.isNotEmpty
          ? RefreshIndicator(
              color: Colors.black87,
              onRefresh: () {
                items = [];
                return pagenation();
              },
              child: Stack(
                children: [
                  ListView.builder(
                    controller: _scrollController,
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: NewsItem(
                          title: items[index],
                        ),
                      );
                    },
                  ),
                  if (isLoading) ...[
                    Positioned(
                      left: 0,
                      bottom: 0,
                      child: Container(
                        height: 80,
                        width: 400,
                        child: const Center(
                          child: CircularProgressIndicator(
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    )
                  ],
                ],
              ),
            )
          : Container(
              child: Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              ),
            ),
    );
  }
}
