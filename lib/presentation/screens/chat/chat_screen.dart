import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://images.crunchbase.com/image/upload/c_thumb,h_256,w_256,f_auto,g_face,z_0.7,q_auto:eco,dpr_1/v1506013178/qhsoaygd90gkrunas5pg.jpg?ik-sanitizeSvg=true',
            ),
          ),
        ),
        title: Text('el codigo'),
        centerTitle: false,
      ),
      body: _ChatView(), //div
    );
  }
        
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
             
              itemCount: 30,
              itemBuilder: (context, index) {
              //return Text('Indice: $index');
              return const MyMessageBubble();
            })),

            Text('mundo'),
          ],
        ),
      ),
    );
  }
}
