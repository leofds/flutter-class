# FutureBuilder

Cria widgets baseado on ultimo snapshot da interação com o futuro. É recarregado a cada setState.

```dart
FutureBuilder<Map>(
  future: _getData(),					// função async
  builder: (context, snapshot) {
    switch (snapshot.connectionState) {
      case ConnectionState.done:
        if(snapshot.hasError || !snapshot.hasData){
          return Center(child: Text("Erro"));
        }
        return Center(child: Text("Pronto"));
      default:
        return Center(child: Text("Carregando Dados..."));
    );
  }
)
```

## Exemplo

```dart
class _HomeState extends State<Home> {

  late Future<List<Pessoa>?> _res;

  @override
  void initState() {
    super.initState();
    _res = _getData();
  }

  Future<List<Pessoa>?> _getData() async{
    //await Future.delayed(Duration(seconds: 5));
    try {
      Dio dio = Dio();
      dio.options.connectTimeout = 1000;
      Response response = await dio.get("http://192.168.0.22:8080/pessoas");
      print(response.statusCode);
      if(response.statusCode == 200){
        return (response.data as List).map((item) => Pessoa.fromMap(item)).toList();
      }
    } on DioError catch (e) {
      print('Erro ao realizar o get ${e.response!.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exemplo Future Builder'),
        ),
        body: Scaffold(
          appBar: AppBar(
            title: Text('StreamBuilder'),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(children: [
                Expanded(child: ElevatedButton(onPressed: (){
                  _res = _getData();
                  setState((){});
                }, child: Text('Recarregar'))),
              ],),
              FutureBuilder(
                future: _res,
                builder: (context, snapshot){
                  switch(snapshot.connectionState){
                    case ConnectionState.done:
                      if(snapshot.hasData){
                        print(snapshot.data);
                        return Container(child: Text('Pronto!'),);
                      }else{
                        return Container(child: Text('Erro!'),);
                      }
                    default:
                      return Center(child: CircularProgressIndicator(),);
                  }

                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
```
