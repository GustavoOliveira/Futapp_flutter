import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:futapp/model/league.dart';
import 'package:futapp/model/listTable.dart';
import 'package:futapp/model/tables.dart';
import 'package:futapp/service/endpoints.dart';

class TableScreen extends StatefulWidget {
  final League league;

  const TableScreen(this.league);

  @override
  _TableScreenState createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  ListTable? listTable;

  @override
  void initState() {
    super.initState();

    getTable(widget.league.campeonato_id).then((returnedValue) {
      setState(() {
        listTable = returnedValue;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Tabela"),
        backgroundColor: Colors.green,
      ),
      //null safety
      body: listTable == null ?
      LinearProgressIndicator() : ListView.separated(
          itemBuilder: (context, index) => buildListItem(listTable!.table![index]),
          separatorBuilder: (context, index) => Divider(height: 1),
          itemCount: listTable?.table?.length ?? 0
      ),
    );
  }

  Widget buildListItem(Tables table){
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Material(
        child: InkWell(
          child: Text("${table.posicao} - ${table.pontos} ${table.nome_time}",style: TextStyle(color: colorText(table.posicao))),
          onTap: () {Fluttertoast.showToast(
              msg: "J:${table.jogos} - V:${table.vitorias} - E:${table.empates} - D:${table.derrotas}",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: colorText(table.posicao),
              textColor: Colors.white,
              fontSize: 16.0
          );},
        ),
      ),
    );
  }

  colorText(position) {
    if(position <= 4){
      return Colors.blueAccent;
    }else if(position <= 10){
      return Colors.orangeAccent;
    }else if(position >= 17){
      return Colors.redAccent;
    }else{
      return Colors.black;
    }
  }

}
