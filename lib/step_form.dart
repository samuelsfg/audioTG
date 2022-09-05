import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './pagebody.dart';

class StepForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StepFormState();
  }

}

class _StepFormState extends State<StepForm>{
  final _stepFormController = PageController();

  int _page = 0;

  List _pagesList = [
    pageBody('Audio01', 'Audio02'),

    Text('Adicionar áudio'),

    Text('Excluir áudio'),
  ];


  void _pageExc(bool excAudio){
    if(excAudio){
      _stepFormController.jumpToPage(2);
    }
  }

  void _pageAdd(bool addAudio){
    if(addAudio){
      _stepFormController.jumpToPage(1);
    }
  }

  void _pageLista(bool listaAudio){
    if(listaAudio){
      _stepFormController.jumpToPage(0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Audio App')),
        backgroundColor: Colors.black,
      ),
      body: PageView.builder(
          controller: _stepFormController,
          itemBuilder: (BuildContext context, int index) {
            return _pagesList[index];
          }),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          FlatButton(onPressed: () => _pageExc(true),
            child: Text('Excluir áudio'),),

          FlatButton(onPressed: () => _pageLista(true),
            child: Text('Lista de áudio'),),

          FlatButton(onPressed: () => _pageAdd(true),
            child: Text('Adicionar áudio'),),




        ],
      ),
    );
  }
}