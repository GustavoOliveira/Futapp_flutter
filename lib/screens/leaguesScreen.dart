import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:futapp/model/league.dart';
import 'package:futapp/model/listLeagues.dart';
import 'package:futapp/screens/tableScreen.dart';
import 'package:futapp/service/endpoints.dart';
import 'package:get_storage/get_storage.dart';

class LeaguesScreen extends StatefulWidget {
  const LeaguesScreen();

  @override
  _LeaguesScreenState createState() => _LeaguesScreenState();
}

class _LeaguesScreenState extends State<LeaguesScreen> {
  final storage = GetStorage();
  int favLeague = 0;
  ListLeagues? listLeagues;


  @override
  void initState() {
    super.initState();
    favLeague = storage.read('favLeague') ?? 0;

    getLeagues().then((returnedValue) {
      setState(() {
        listLeagues = returnedValue;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Campeonatos',textAlign: TextAlign.center),
        backgroundColor: Colors.green,
      ),
      body: listLeagues == null ?
      LinearProgressIndicator() : ListView.separated(
          itemBuilder: (context, index) => buildListItem(listLeagues!.leagues![index]),
          separatorBuilder: (context, index) => Divider(height: 1),
          itemCount: listLeagues?.leagues?.length ?? 0
      ),
    );

  }

  Widget buildListItem(League league){
    //return ListItemVehicle(position)
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
           ListTile(
            leading: Image.network(league.logo),
            title: Text(league.nome),
            subtitle: Text(league.tipo),
            trailing: IconButton(
              icon: Icon(Icons.favorite, color: favLeague==league.campeonato_id? Colors.pink : Colors.black26),
              onPressed: () {
                storage.write('favLeague', league.campeonato_id);
                setState(() {
                  favLeague = league.campeonato_id;});
              },
            ),
            onTap: () {
                 Navigator.of(context).push(
                   MaterialPageRoute(
                     builder: (context) =>
                         TableScreen(league),
                   ),
                 );
             }
          ),
        ],
      ),
    );
  }
}