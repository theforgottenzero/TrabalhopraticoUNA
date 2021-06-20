import 'package:dio/dio.dart';
import 'nutrientes_receita.dart';

class TacoApi{
  final Dio _dio = Dio();

  String url = 'https://taco-food-api.herokuapp.com/api/v1/food';
  String id;

  TacoApi(this.id);

  getTacoApi()async{
    Response response = await _dio.get('$url/$id');

    if(response.statusCode != 200){
      throw Exception();
    }else{
      return IngredienteNutrientes.fromJson(response.data);
    }
  }
}