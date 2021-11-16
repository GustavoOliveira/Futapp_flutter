import 'package:futapp/model/league.dart';

class ListLeagues {

  List<League>? leagues;

  ListLeagues({
    this.leagues
  });

  ListLeagues.fromJson(json) //operador ternário
      : leagues =  buildListLeagues(json);

  static List<League> buildListLeagues(List<dynamic> list) =>
  list.map(
          (item) =>
          League.fromJson(item)
  ).toList();

}
