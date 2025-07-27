import 'dart:math';

void main() {
  //tipagem por inferência

  var name = 'Voyager I';
  var year = 1977;
  var antennaDiameter = 3.7;
  var isActive = true;
  List<String> planets = ['jupiter', 'Saturn', 'Uranus'];
  Map<String, String> image = {'tags': 'saturn', 'url': '//path'};

  print('A sonda espacial $name foi lançada em $year!');

  var idade = 16;

  if (idade >= 65) {
    print('Fila preferencial.');
  } else if (idade >= 18) {
    print('Maior de idade.');
  } else {
    print('Menor de idade.');
  }

  for (var i = 0; i < 10; i++) {
    print('Número ${i + 1}');
  }

  var i = 0;
  while (i < 10) {
    print('Número ${i + 1}');
    i++;
  }

  // Coleções
  var frutas = ['Banana', 'Uva', 'Melão'];
  print(frutas);

  // a) Acessando elementos
  print(frutas[0]);
  print(frutas.length);

  // b) Adicionando elementos
  frutas.add('Maçã');
  print(frutas);
  frutas.insert(2, 'Abacaxi');
  print(frutas);

  var frutas2 = ['Abacate', ...frutas];
  print(frutas2);

  // c) Removendo elementos
  frutas.remove('Abacaxi');
  print(frutas);

  frutas.removeAt(1);
  print(frutas);

  // Métodos

  // a) forEach - executar uma função para cada elemento da lista

  var frutas3 = ['Mamão', 'Laranja', 'Goiaba'];
  print(frutas3);

  for (var fruta in frutas3) {
    print(fruta[0]);
  }

  // b) map()
  var frutasMaiusculas = frutas3.map((fruta) => fruta.toUpperCase()).toList();
  print(frutasMaiusculas);

  // where - filtragem
  var frutasB = frutas.where((fruta) => fruta[0].toLowerCase() == 'b').toList();
  print(frutasB);

  // reduce(), fold()
  var numeros = List<int>.generate(10, (i) => Random().nextInt(9) + 1);
  print(numeros);

  var soma = numeros.reduce((soma, numero) => soma + numero);
  print(soma);

  //sort - ordenaçao
  numeros.sort((a, b) => a.compareTo(b)); // crescente
  print(numeros);

  numeros.sort((a, b) => b.compareTo(a)); // decrescente
  print(numeros);

  var c1 = Carro('VW', 'Fusca', 1962, 80);
  print(c1);

  var c2 = Carro.novo('Ferrari', 'Roma');
  print(c2);

  var c3 =Carro.paramNomeados(marca: 'Gurgel', modelo: 'BR100', ano: 1990, velocidade: 50);
  print(c3);

//Lista de números: filtre os números pares, elevar ao quadrado e retornar a soma

  print(
    numeros.where((x) => x % 2 == 0).map((x) => x * x).reduce((x, y) => x + y),
  );
}

// classe = receita e objeto = bolo

class Carro {
  String marca;
  String modelo;
  int? ano;
  double? velocidade;

  //getters
  //double? get velocidade => velocidade;

  //setters
  /*set velocidade(double? velocidade) {
    velocidade = velocidade;
  }*/

  Carro(
    this.marca,
    this.modelo, [
    this.ano,
    this.velocidade,
  ]); // construtor posicional

  Carro.novo(this.marca, this.modelo) : ano = 2025, velocidade = 120;

  Carro.paramNomeados({ //option +shift + F para formatar o code
    required this.marca,
    required this.modelo,
    this.ano,
    this.velocidade,
  });

  @override
  String toString() {
    return 'Marca: $marca, Modelo: $modelo, Ano: $ano, Velocidade: $velocidade';
  }
}

