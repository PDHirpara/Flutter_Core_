import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class custom_button extends StatefulWidget {
  const custom_button({Key? key}) : super(key: key);

  @override
  State<custom_button> createState() => _custom_buttonState();
}

class _custom_buttonState extends State<custom_button> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// ClipRect
              Container(
                margin: EdgeInsets.only(top: 40.0,),
                child: Text(
                  "ClipRect",
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              ClipRect(
                child: Ink.image(
                  height: 300,
                  width: 300,
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1595760780346-f972eb49709f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                  child: InkWell(
                    onTap: (){},
                  ),
                ),
              ),

              /// ClipRRect
              Container(
                margin: EdgeInsets.only(top: 40.0,),
                child: Text(
                  "ClipRRect",
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(300.0),
                child: Material(
                  child: Ink.image(
                    height: 300,
                    width: 300,
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://i.picsum.photos/id/785/200/300.jpg?blur=5&hmac=XE382KQsZw2U-G4gJarDmJ_3veUDfGXUcLaWcdDxhzQ"),
                    child: InkWell(
                      onTap: (){},
                    ),
                  ),
                ),
              ),

              /// ClipOval
              Container(
                margin: EdgeInsets.only(top: 40.0,),
                child: Text(
                  "ClipOval",
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              ClipOval(
                child: Container(
                  child: Material(
                    child: Ink.image(
                      height: 400,
                      width: 200,
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://i.picsum.photos/id/785/200/300.jpg?blur=5&hmac=XE382KQsZw2U-G4gJarDmJ_3veUDfGXUcLaWcdDxhzQ"),
                      child: InkWell(
                        onTap: (){},
                      ),
                    ),
                  ),
                ),
              ),

              /// ClipPath
              Container(
                margin: EdgeInsets.only(top: 40.0,),
                child: Text(
                  "ClipPath",
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              ClipPath(
                clipper: TriangleClipper(),
                child: Material(
                  child: Ink.image(
                    height: 300,
                    width: 300,
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://i.picsum.photos/id/785/200/300.jpg?blur=5&hmac=XE382KQsZw2U-G4gJarDmJ_3veUDfGXUcLaWcdDxhzQ"),
                    child: InkWell(
                      onTap: (){},
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width / 2, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}



//         ClipPath(
//           clipper: Triangle(),
//           child: Material(
//               child: Ink.image(
//                 height: 100,
//                   width: 100,
//                   fit: BoxFit.fill,
//                   image: NetworkImage("https://i.picsum.photos/id/866/200/300.jpg?hmac=rcadCENKh4rD6MAp6V_ma-AyWv641M4iiOpe1RyFHeI"),
//                 child: InkWell(
//                   onTap: (){},
//                 ),
//               ),
//           ),
//         ),
// SizedBox(
//     height: 50,
//
// ),
// ClipRRect(
//             borderRadius: BorderRadius.circular(20),
//             child: Material(
//               child: Ink.image(
//                 height: 100,
//                 width: 300,
//                 fit:BoxFit.fill,
//                 image: NetworkImage("https://i.picsum.photos/id/866/200/300.jpg?hmac=rcadCENKh4rD6MAp6V_ma-AyWv641M4iiOpe1RyFHeI"),
//                 child: InkWell(
//                   onTap: (){},
//                   child: Text("image value"),
//                 ),
//               ),
//             ),
//           ),
//       ],
//     ),
//   ),
// ),
// Center(
//   child:Column(
//     children: [
//       ClipRRect(
//         borderRadius: BorderRadius.circular(20),
//         child: Material(
//           child: Ink.image(
//             height: 100,
//             width: 300,
//             fit:BoxFit.fill,
//             image: NetworkImage("https://i.picsum.photos/id/866/200/300.jpg?hmac=rcadCENKh4rD6MAp6V_ma-AyWv641M4iiOpe1RyFHeI"),
//             child: InkWell(
//               onTap: (){},
//               child: Text("image value"),
//             ),
//           ),
//         ),
//       ),
//       ClipRect(
//         child: Container(
//           child: Align(
//             alignment: Alignment.center,
//           ),
//         ),
//       )
//     ],
//   )
// )
//     );
//
//   }
//
// }
class Triangle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width/2, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(Triangle oldClipper) => false;
}

