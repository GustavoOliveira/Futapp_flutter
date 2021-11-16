class League {

  //variaveis
  int campeonato_id;
  String nome;
  String tipo;
  String logo;

  //null safety
  //construtor
  League( //opcionais
      this.campeonato_id,
      this.nome,
      this.tipo,
      this.logo
      );

  League.fromJson(Map<String, dynamic> json)
      : campeonato_id = json['campeonato_id'],
        nome = json['nome'],
        tipo = json['tipo'],
        logo = json['logo'];
}

