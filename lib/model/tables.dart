class Tables {

  //variaveis
  int posicao;
  int pontos;
  String nome_time;
  String escudo_time;
  int jogos;
  int vitorias;
  int empates;
  int derrotas;

  //null safety
  //construtor
  Tables( //opcionais
      this.posicao,
      this.pontos,
      this.nome_time,
      this.escudo_time,
      this.jogos,
      this.vitorias,
      this.empates,
      this.derrotas,
      );

  Tables.fromJson(Map<String, dynamic> json)
      : posicao = json['posicao'],
        pontos = json['pontos'],
        nome_time = json['time']['nome_popular'],
        escudo_time = json['time']['escudo'],
        jogos = json['jogos'],
        vitorias = json['vitorias'],
        empates = json['empates'],
        derrotas = json['derrotas'];
}

