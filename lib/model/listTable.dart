import 'package:futapp/model/tables.dart';

class ListTable {

  List<Tables>? table;

  ListTable({
    this.table
  });

  ListTable.fromJson(json) //operador ternário
      : table =  buildListTable(json);

  static List<Tables> buildListTable(List<dynamic> list) =>
  list.map(
          (item) =>
              Tables.fromJson(item)
  ).toList();

}
