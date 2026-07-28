import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> message = [
    Message(text: "hola mundo", fromWho: FromWho.mi),
    Message(
      text: "ya regresaste del trabajo ",
      fromWho: FromWho.mi    
    ),
  ];


  Future<void> sendMessage(String text) async{
    //TODO implementar metodo
  }
}
