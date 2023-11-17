import 'package:mobx/mobx.dart';
//repository
import '../repository/captura_repository.dart';
//models
import '../../../shared/models/informacoes.dart';

part 'captura_controller.g.dart';

class CapturaController = _CapturaController with _$CapturaController;

abstract class _CapturaController with Store {
  final FormErrorState error = FormErrorState();

  late CapturaRepository repository;

  @observable
  String? texto = '';

  @observable
  bool sucesso = true;

  @observable
  late List<Informacoes> listaInformacoes;

  late List<ReactionDisposer> _disposers;
  void dispose() {
    for (final d in _disposers) {
      d();
    }
  }

  void initialState() {
    _disposers = [];
  }

  @action
  Future<List<Informacoes>> ler() {
    return repository.ler(key: 'texto');
  }

  @action
  void salvar(String? value) {
    textoValido(value);
    if (error.temErros == false && value != null) {
      repository.salvar('texto', Informacoes(texto: value));
    }
  }

  @action
  void editar(String? value) {
    textoValido(texto);
    if (error.temErros == false && value != null)
      repository.editar('texto', Informacoes(texto: value));
  }

  @action
  void deletar() {
    repository.remover('texto');
  }

  void textoValido(String? value) {
    if (value == null || value.isEmpty) {
      error.texto = 'O campo deve ser preechido';
    }
  }
}

class FormErrorState = _FormErrorState with _$FormErrorState;

abstract class _FormErrorState with Store {
  @observable
  String? texto;

  @computed
  bool get temErros => texto != null;
}
