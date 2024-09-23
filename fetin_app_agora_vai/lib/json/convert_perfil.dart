class UserJson {
  String? username;
  String? id;
  String? cargo;
  String? empresa;
  String? nacionalidade;
  String? base;
  String? horasTotais;

  UserJson({this.username, this.id, this.cargo, this.empresa, this.base, this.nacionalidade});

  UserJson.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    id = json['id'];
    cargo = json['cargo'];
    empresa = json['empresa'];
    base = json['base'];
    nacionalidade = json['nacionalidade'];
    horasTotais = json['horasTotais'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['id'] = this.id;
    data['cargo'] = this.cargo;
    data['empresa'] = this.empresa;
    data['base'] = this.base;
    data['nacionalidade'] = this.nacionalidade;
    data['horasTotais'] = this.horasTotais;
    return data;
  }
}