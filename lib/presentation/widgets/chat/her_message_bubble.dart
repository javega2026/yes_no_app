import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Lorem Ipsum is simply dummy text of the prinindustry',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 5),

        // Todo: image
        _ImageBubble(),
        const SizedBox(height: 10),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
   // print(size);
    final double anchoActual = size.width;

    Color colorDeFondo = Colors.red[200]!;
    if (anchoActual > 700) {
      colorDeFondo = Colors.blue[200]!;
    }

    //print(size);
    return Container(
      decoration: BoxDecoration(
        color: colorDeFondo,
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: Colors.black, width: 5),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png',
          width: size.width*0.30,  //ocupa el 30%
          height:160,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if(loadingProgress == null) return child;
            return Container( 
               width: size.width*0.7,
               height: 160,
               padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
               child: const Text("se esta enviando la iamgen..."),
            );
          },
        ),
      ),
    );
  }
}

// class _ImageBubble extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.red[200],
//         borderRadius: BorderRadius.circular(100),
//         border: Border.all(color: Colors.blue, width: 5),
//       ),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(100),
//         child: Image.network(
//           'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png',
//           width: 150,
//           height: 150,fit:BoxFit.cover
//         ),
//       ),
//     );
//   }
// }

// class _ImageBubble extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.red[200], // Color de fondo opcional mientras carga
//         borderRadius: BorderRadius.circular(100), // Debe coincidir con el ClipRRect para que no sobresalga
//         border: Border.all(
//           color: Colors.blue, // Color del borde (recuadro)
//           width: 5,         // Grosor del borde
//         ),
//       ),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(100), // Ligeramente menor para que ajuste bien dentro del borde
//         child: Image.network(
//           'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png',
//           width: 150,
//           height: 150,
//           fit: BoxFit.cover,
//         ),
//       ),
//     );
//   }
// }

// class _ImageBubble extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(20),

//       child: Image.network(
//         'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png',
//         width: 150,
//         height: 150,
//         fit: BoxFit.cover,
//       ),
//     );
//   }
// }

//https://yesno.wtf/#api
