class ReceitaNutrientes{
  List<IngredienteNutrientes> nutrientes;
  double caloria = 0;
  double proteina = 0;
  double colesterol = 0;
  double lipidio = 0;

  ReceitaNutrientes(
    this.nutrientes,
    List<double> caloriaIngrediente,
    List<double> proteinaIngrediente,
    List<double> colesterolIngrediente,
    List<double> lipidioIngrediente,
  ){
    int quantidade = nutrientes.lenght;

    for(int i = 0; i < quantidede; i++){
      this.caloria += caloriaIngrediente[i];
      this.proteina += proteinaIngrediente[i];
      this.colesterol += colesterolIngrediente[i];
      this.lipidio += lipidioIngrediente[i];
    }
  }
}

class IngredienteNutrientes{
  double caloria;
  double proteina;
  double colesterol;
  double lipidio;
  double quantidade = 0;

  double caloriaPadrao = 0;
  double proteinaPadrao = 0;
  double colesterolPadrao = 0;
  double lipidioPadrao = 0;
/*
  factory IngredienteNutrientes.fromJson(Map doc){
    return IngredienteNutrientes(
      caloriaPadrao: doc['energy']['kcal'],
      proteinaPadrao: doc['protein']['qty'],
      colesterolPadrao: doc['cholesterol']['qty'],
      lipidioPadrao: doc['lipid']['qty'],
    );
  }*/

  IngredienteNutrientes(
    double caloriaPadrao,
    double proteinaPadrao,
    double colesterolPadrao,
    double lipidioPadrao,
    this.quantidade,
  ){
    this.caloria = caloriaPadrao*quantidade/100;
    this.proteina = proteinaPadrao*quantidade/100;
    this.colesterol = colesterolPadrao*quantidade/100;
    this.lipidio = lipidioPadrao*quantidade/100;
  }
}