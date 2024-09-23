class TodoModelJson {
  String? data;
  String? semana;
  String? flightTimeHoje;
  Voo? voo;

  TodoModelJson({
    this.data, 
    this.semana, 
    this.flightTimeHoje, 
    this.voo
    });

  TodoModelJson.fromJson(Map<String, dynamic> json) {
    data = json['data'];
    semana = json['semana'];
    flightTimeHoje = json['flight_time_hoje'];
    voo = json['voo'] != null ? new Voo.fromJson(json['voo']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['data'] = this.data;
    data['semana'] = this.semana;
    data['flight_time_hoje'] = this.flightTimeHoje;
    if (this.voo != null) {
      data['voo'] = this.voo!.toJson();
    }
    return data;
  }
}

class Voo {
  String? empresa;
  String? numeroDoVoo;
  String? aeroportoDeOrigem;
  String? horarioDeSaida;
  String? aeroportoDeDestino;
  String? horarioDeChegada;
  String? tipoDaAeronave;

  Voo(
      {this.empresa,
      this.numeroDoVoo,
      this.aeroportoDeOrigem,
      this.horarioDeSaida,
      this.aeroportoDeDestino,
      this.horarioDeChegada,
      this.tipoDaAeronave});

  Voo.fromJson(Map<String, dynamic> json) {
    empresa = json['empresa'];
    numeroDoVoo = json['numero do voo'];
    aeroportoDeOrigem = json['aeroporto de origem'];
    horarioDeSaida = json['horario de saida'];
    aeroportoDeDestino = json['aeroporto de destino'];
    horarioDeChegada = json['horario de chegada'];
    tipoDaAeronave = json['tipo da aeronave'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['empresa'] = this.empresa;
    data['numero do voo'] = this.numeroDoVoo;
    data['aeroporto de origem'] = this.aeroportoDeOrigem;
    data['horario de saida'] = this.horarioDeSaida;
    data['aeroporto de destino'] = this.aeroportoDeDestino;
    data['horario de chegada'] = this.horarioDeChegada;
    data['tipo da aeronave'] = this.tipoDaAeronave;
    return data;
  }
}
