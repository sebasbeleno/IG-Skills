import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ig_skills/src/blocs/profileBloc.dart';
import 'package:ig_skills/src/models/profile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void initState() {
    super.initState();
    profilebloc.getAllItems();
  }

  void dispose() {
    profilebloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listado API")),
      body: Container(
        child: FutureBuilder(
          future: profilebloc.allItems.first,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return Container(
                child: Center(
                  child: Text("Cargando..."),
                ),
              );
            }
            return buildListView(snapshot);
          },
        ),
      ),
    );
  }

  ListView buildListView(AsyncSnapshot snapshot) {
    return ListView.builder(
      itemCount: (snapshot.data as List<Profile>).length,
      itemBuilder: (BuildContext context, int position) {
        return Card(
          child: Column(
            children: <Widget>[
              ListTile(
                leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        (snapshot.data[position] as Profile).urlFoto)),
                title: Text(snapshot.data[position].fullName),
                subtitle: Text(snapshot.data[position].email),
              )
            ],
          ),
        );
      },
    );
  }
}
