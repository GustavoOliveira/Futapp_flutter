import 'dart:io';
import 'package:dio/dio.dart';
import 'package:futapp/model/listLeagues.dart';
import 'package:futapp/model/listTable.dart';
// teste: Bearer test_629089d5b7759ffac29cfe2f69507c
// live: Bearer live_2c4a81445f9dce49de8a3de371af06
Future<ListLeagues?> getLeagues() async{
  Dio dio = Dio();
  dio.options.headers["Authorization"] = "Bearer live_2c4a81445f9dce49de8a3de371af06";

  ListLeagues? leagues;
  try {
    Response response = await dio.get('https://api.api-futebol.com.br/v1/campeonatos');

    if (response.statusCode == HttpStatus.ok) {
      var jsonResponse = response.data;
      leagues = ListLeagues.fromJson(jsonResponse);
    }
  } finally {
    dio.close();
  }

  return leagues;
}

Future<ListTable?> getTable(leagueId) async{
  Dio dio = Dio();
  dio.options.headers["Authorization"] = "Bearer live_2c4a81445f9dce49de8a3de371af06";

  ListTable? table;
  try {
    Response response = await dio.get('https://api.api-futebol.com.br/v1/campeonatos/${leagueId}/tabela');

    if (response.statusCode == HttpStatus.ok) {
      var jsonResponse = response.data;
      table = ListTable.fromJson(jsonResponse);
      print(table);
    }
  } finally {
    dio.close();
  }

  return table;
}