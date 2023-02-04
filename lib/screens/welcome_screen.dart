// import 'package:flutter/material.dart';

// import 'home_page.dart';

// class welcome_screen extends StatelessWidget {
//   const welcome_screen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         decoration: BoxDecoration(
//             image: DecorationImage(
//           image: AssetImage("images/city1.jpg"),
//           fit: BoxFit.cover,
//           opacity: 0.7,
//         )),
//         child: Material(
//           color: Colors.transparent,
//           child: SafeArea(
//               child: Padding(
//             padding: EdgeInsets.symmetric(vertical: 100, horizontal: 25),
//             child: Column(children: [
//               Text("The World",
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 35,
//                       fontWeight: FontWeight.bold,
//                       letterSpacing: 1.5)),
//               SizedBox(height: 2),
//               Text(
//                 "Enjoy ",
//                 style: TextStyle(
//                     color: Colors.white.withOpacity(0.9),
//                     fontSize: 25,
//                     fontWeight: FontWeight.w400,
//                     letterSpacing: 1.5),
//               ),
//               SizedBox(height: 12),
//               Text(
//                 """
// Lorem ipsum dolor sit amet, consectetur
// adipiscing elit. Pellentesque suscipit quis neque at mollis.
// Mauris dictum ipsum lectus, """,
//                 style: TextStyle(
//                     color: Colors.white.withOpacity(0.7),
//                     fontSize: 16,
//                     letterSpacing: 1.2),
//               ),
//               SizedBox(height: 30),
//               InkWell(
//                 onTap: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => HomePage(),
//                       ));
//                 },
//                 child: Ink(
//                   padding: EdgeInsets.all(15),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: Icon(
//                     Icons.arrow_forward_ios,
//                     color: Colors.black54,
//                     size: 20,
//                   ),
//                 ),
//               )
//             ]),
//           )),
//         ));
//   }
// }
import 'package:flutter/material.dart';
import 'home_page.dart';

class welcome_screen extends StatelessWidget {
  const welcome_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Spacer(),
                Image.asset(
                  'images/illustration.png',
                ),
                const SizedBox(height: 40),
                const Text(
                  "Explore your journey \nonly with us",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "All your vacations destinations are here,\nenjoy your holiday",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: SizedBox(
                    width: double.maxFinite,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: const StadiumBorder(),
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 8.0,
                        ),
                      ),
                      child: const Text("Get Started"),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
