import 'package:flutter/material.dart';
import 'package:todolist/src/home/componentes/ItemLista.dart';

class HomeController {
  
  List<String> tarefas = [];

  var textController = new TextEditingController();

  void addTarefa(){
    tarefas.add(textController.text);
    textController.clear();
  }

  Column buildWidgetHome(){
    return Column(
      children: [
        widgetTextField(),
        Column(
          children: tarefas.map((e) => ItemLista(descricao: e)).toList(),
        ),
      ]
    );
  }

  TextField widgetTextField() {
    return TextField(
      controller: textController,
      decoration:
        InputDecoration(
          border: InputBorder.none,
          icon: Icon(Icons.task),
          hintText: 'Tarefa'
        ),
    );
  }
}