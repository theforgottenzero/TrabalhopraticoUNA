class Receita{
  List<int> categoria; //1-Café da manhã, 2-Almoço, 3-Lanche, 4-Jantar
  String nome;
	String imagemUrl;
	List<Ingredientes> ingrediente_final;
	String texto_ingredientes;
	String preparo;

	Receita(this.categoria, this.nome, this.imagemUrl, this.ingrediente_final, this.texto_ingredientes, this.preparo);
}

class Ingredientes{
	int ingrediente_id;
	double quantidade_g;

	Ingredientes(this.ingrediente_id, this.quantidade_g);
}