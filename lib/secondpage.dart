import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HalamanDua extends StatefulWidget {
  final String title;
  final Object data;
  const HalamanDua({Key? key, required this.title, required this.data})
      : super(key: key);

  @override
  State<HalamanDua> createState() => _HalamanDuaState(this.title, this.data);
}

class _HalamanDuaState extends State<HalamanDua> {
  final title;
  var data;
  _HalamanDuaState(this.title, this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: data[index].id,
                );
              })),
    );
  }
}
