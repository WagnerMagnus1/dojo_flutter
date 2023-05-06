class BalloonModel {
  int? id;
  String? nome;
  Piloto? piloto;
  Caracteristicas? caracteristicas;

  BalloonModel({this.id, this.nome, this.piloto, this.caracteristicas});

  BalloonModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    piloto =
        json['piloto'] != null ? new Piloto.fromJson(json['piloto']) : null;
    caracteristicas = json['caracteristicas'] != null
        ? new Caracteristicas.fromJson(json['caracteristicas'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    if (this.piloto != null) {
      data['piloto'] = this.piloto!.toJson();
    }
    if (this.caracteristicas != null) {
      data['caracteristicas'] = this.caracteristicas!.toJson();
    }
    return data;
  }
}

class Piloto {
  String? nome;
  int? idade;
  String? experiencia;

  Piloto({this.nome, this.idade, this.experiencia});

  Piloto.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    idade = json['idade'];
    experiencia = json['experiencia'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['idade'] = this.idade;
    data['experiencia'] = this.experiencia;
    return data;
  }
}

class Caracteristicas {
  String? cor;

  Caracteristicas({this.cor});

  Caracteristicas.fromJson(Map<String, dynamic> json) {
    cor = json['cor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cor'] = this.cor;
    return data;
  }
}