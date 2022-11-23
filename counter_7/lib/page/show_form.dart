import 'package:counter_7/page/form.dart' as form;
import 'package:flutter/material.dart';
import 'package:counter_7/utils/drawer.dart';

class MyShowFormPage extends StatefulWidget {
  const MyShowFormPage({super.key});

  @override
  State<MyShowFormPage> createState() => _MyShowFormPageState();
}

class _MyShowFormPageState extends State<MyShowFormPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Data Budget'),
        ),
        drawer: DrawerClass(parentScreen: ScreenName.ShowForm),
        body: ListView.builder(
            itemCount: form.data.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                    title: Text(form.data[index]['judul']),
                    subtitle: Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            form.data[index]['tanggal'],
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                          Padding(padding: EdgeInsets.all(5)),
                          Text(
                            form.data[index]['nominal'],
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    trailing: Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 0),
                      child: Text(form.data[index]['jenis']),
                    )),
              );
            }));
  }
}
