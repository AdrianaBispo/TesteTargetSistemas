import 'package:shared_preferences/shared_preferences.dart';
//models
import '../../../shared/models/informacoes.dart';

abstract class ICapturaRepository {
  Future<List<Informacoes>> ler({required String key});
  Future salvar(String key, Informacoes informacoes);
  Future editar(String key, Informacoes informacoes);
  Future remover(String key);
}

class CapturaRepository implements ICapturaRepository {
  @override
  ler({required String key}) async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getStringList(key);
    //Informacoes informacoes = infromacoesFromJson(value!);
  
    final listaInformacoes = data != null
    ? data.map((e) => infromacoesFromJson(e)).toList() 
    : List<Informacoes>;

    return listaInformacoes as List<Informacoes>;
  }

  @override
  salvar(String key, Informacoes informacoes) async {
    final prefs = await SharedPreferences.getInstance();
    String value = infromacoesToJson(informacoes);
    
    List<String> listaInformacoes = [value];
    
    prefs.setStringList(key, listaInformacoes);
  }

  @override
  editar(String key, Informacoes informacoes) async {
    final prefs = await SharedPreferences.getInstance();
    String value = infromacoesToJson(informacoes);
    prefs.setString(key, value);
  }

  @override
  remover(String key) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
  }
}
