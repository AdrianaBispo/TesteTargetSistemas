import 'dart:convert';

class Informacoes {
  final String texto;

  Informacoes({required this.texto});

  Map<String, dynamic> toJson() => {
        'texto': texto,
      };

  factory Informacoes.fromJson(Map<String, dynamic> json) =>
      Informacoes(texto: json['texto']);
}

// Converting String data To Model
Informacoes infromacoesFromJson(String value) =>
    Informacoes.fromJson(json.decode(value));

// Converting Model to String
String infromacoesToJson(Informacoes data) => json.encode(data.toJson());
