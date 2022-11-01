import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:new_app/components/drawer.dart';

import '../components/appbar.dart';


class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  var url = Uri.http("libread.herokuapp.com", "/api/journal/");
  var data;

  fetchData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const AppBarTextWidget("List Page"),
        ),
        drawer: const DrawerWidget(),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniStartDocked,
        body:  data != null
            ? ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(data[index]["title"]),
              subtitle: Text(data[index]["authors"]),
              leading: Text("${index + 1}"),
            );
          },
          itemCount: data.length,
        )
            : const Center(child: CircularProgressIndicator()),
    );
  }
}