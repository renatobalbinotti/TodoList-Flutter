import 'package:flutter/material.dart';
import 'HomeController.dart';
import 'componentes/ItemLista.dart';
import 'componentes/CustomTitle.dart';

class HomeView extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeView> {

  final HomeController controller = HomeController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomTitle(
          title: 'Tarefinhas do Dev',
        ),
      ),
      body: controller.buildWidgetHome()
      ,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            controller.addTarefa();
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  List<Widget> buildList() {
    return controller.tarefas.map((e) => ItemLista(descricao: e)).toList();
  }


}