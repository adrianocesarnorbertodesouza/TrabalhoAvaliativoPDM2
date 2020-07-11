class Produtos{
  String _id;
  String _descricao;
  double _quantidade;
  double _preco;

  Produtos(this._id, this._descricao, this._quantidade, this._preco);

  String get id => _id;
  String get descricao => _descricao;
  double get quantidade => _quantidade;
  double get valor => _preco;

  Produtos.map(dynamic obj){
    this._id = obj ["id"];
    this._descricao = obj ["descricao"];
    this._quantidade = obj ["quantidade"];
    this._preco = obj ["valor"];
  }

  Map<String, dynamic> toMap(){
    var map = Map<String, dynamic>();
    if(_id != null){
      map["id"] = _id;
    }
    map["descricao"] = _id;
    map["quantidade"] = _id;
    map["valor"] = _id;
    return map;
  }

  Produtos.fromMap(Map<String, dynamic> map, String id){
    this._id = id ??'';
    this._descricao = map["descricao"];
    this._quantidade = map["quantidade"];
    this._preco = map["valor"];
  }

}