import 'package:flutter/cupertino.dart';
import '../model/pokemon.dart';
import '../model/repositories/repository.dart';

class PokemonPresenter with ChangeNotifier {
  final Repository repository;

  PokemonPresenter(this.repository);

  late bool loading;
  List<Pokemon> listaPokemons = [];

  void getPokemons() async {
    loading = true;
    listaPokemons = await repository.getPokemons();
    loading = false;
    notifyListeners();
  }
}
