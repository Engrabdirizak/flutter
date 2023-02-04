import 'package:flutter/material.dart';
import 'LoginScreen.dart';

class PostBottombar extends StatelessWidget {
  const PostBottombar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height / 2,
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        decoration: BoxDecoration(
            color: Color(0xFFEDF2F6),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            )),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Cityname,Country",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 20),
                      Text("4.5",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          )),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    """Lorem ipsum dolor sit amet,.  mollis.Mauris dictum ipsum lectus,Lorem ipsum dolor sit amet, mollis.Mauris dictum ipsum lectus,Lorem ipsum dolor sit amet, consecteturadipiscing elit. Pellentesqueconsecteturadipiscing elit. Pellentesque
                  , """,
                    style: TextStyle(color: Colors.black26, fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(),
                        child: Expanded(
                            child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            "images/city6.jpg",
                            fit: BoxFit.cover,
                            width: 120,
                            height: 90,
                          ),
                        )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Expanded(
                            child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            "images/city4.jpg",
                            fit: BoxFit.cover,
                            width: 120,
                            height: 90,
                          ),
                        )),
                      ),
                      Expanded(
                          child: Container(
                        alignment: Alignment.center,
                        width: 120,
                        height: 90,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage("images/city1.jpg"),
                              fit: BoxFit.cover,
                              opacity: 0.4,
                            )),
                        child: Text(
                          "10+",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w400),
                        ),
                      ))
                    ],
                  ),
                  // SizedBox(height: 20),
                  // Container(
                  //   height: 50,
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Container(
                  //         padding: EdgeInsets.all(10),
                  //         decoration: BoxDecoration(
                  //             color: Colors.white,
                  //             borderRadius: BorderRadius.circular(15),
                  //             boxShadow: [
                  //               BoxShadow(color: Colors.black26, blurRadius: 4)
                  //             ]),
                  //         child: Icon(
                  //           Icons.bookmark_outline,
                  //           size: 40,
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // ),
                  // Container(
                  //   padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  //   decoration: BoxDecoration(
                  //       color: Colors.redAccent,
                  //       borderRadius: BorderRadius.circular(10),
                  //       boxShadow: [
                  //         BoxShadow(color: Colors.black26, blurRadius: 4)
                  //       ]),
                  //   child: Text(
                  //     "Book Now",
                  //     style: TextStyle(
                  //         color: Colors.white,
                  //         fontSize: 26,
                  //         fontWeight: FontWeight.w500),
                  //   ),
                  // )
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(color: Colors.black26, blurRadius: 6)
                              ]),
                          child: Icon(
                            Icons.bookmark_outline,
                            size: 28,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(color: Colors.black26, blurRadius: 4)
                              ]),
                          child: Text(
                            "Book Now",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
