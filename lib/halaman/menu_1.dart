import 'package:flutter/material.dart';
import 'package:well_app/halaman/components/menucard.dart';

// import 'package:well_app/halaman/chatReguler.dart';
// import 'package:well_app/halaman/dokter.dart';
// import 'package:well_app/halaman/favorit.dart';
// import 'package:klikdokter_app/widget/menuicon.dart';

class MenuSatu extends StatefulWidget {
  MenuSatu({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MenuSatuState createState() => new _MenuSatuState();
}

class _MenuSatuState extends State<MenuSatu> {
  TextEditingController searchController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // _menuItem(image, text, page) {
  //   return GestureDetector(
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.center,
  //       children: <Widget>[
  //         CircleAvatar(
  //           child: Image.asset(image),
  //           // Icon(
  //           //   icon,
  //           //   color: Colors.white,
  //           //   size: 18.0,
  //           // ),
  //           backgroundColor: Colors.lightBlue[800],
  //         ),
  //         SizedBox(height: 10.0,),
  //         Text(
  //           text,
  //           style: TextStyle(
  //             fontWeight: FontWeight.bold,
  //             color: Colors.lightBlue[800],
  //           ),
  //         ),
  //       ],
  //     ),
  //     onTap: () {
  //       Navigator.pushNamed(context, page);
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.lightBlue[800],
            title: Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "klik",
                        style: TextStyle(
                          color: Colors.lightGreen[600],
                          fontSize: 26.0,
                        )),
                    TextSpan(
                        text: "dokter",
                        style: TextStyle(color: Colors.white, fontSize: 28.0)),
                  ]),
                ),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  showSearch(context: context, delegate: DataSearch());
                },
              ),
            ],
          ),
          body: new Column(
            children: <Widget>[
              Container(
                height: size.height * 0.15,
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: size.height * 0.15 - 27,
                      decoration: BoxDecoration(
                          color: Colors.lightBlue[800],
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          )),
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text(
                              " Selamat Datang",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  .copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20.0),
                        height: 54,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius:30,
                                color: Colors.lightBlue[800].withOpacity(0.23),
                              )
                            ]),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(left: 20.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Search",
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                                padding: EdgeInsets.only(right: 20.0),
                                child: Icon(Icons.search)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  children: <Widget>[
                    //=========================== MENU CARD ===========================
                    MenuCard(size: size,namaMenu: "Konsultasi",image: "images/chat_with_doctor.jpg",page: "pesan",),
                    MenuCard(size: size,namaMenu: "Buat janji",image: "images/buat_janji.png",page: "buat janji",),
                    MenuCard(size: size,namaMenu: "Artikel Kesehatan",image: "images/login_illustration.jpg",),
                    MenuCard(size: size,namaMenu: "Belanja Sehat",image: "images/doctors_talking.png",),
                    //============================ _menuItem ==========================
                    // _menuItem(Icons.library_books, "Info Sehat", "dokter"),
                    // _menuItem(Icons.home, "Klinik", "dokter"),
                    // _menuItem(Icons.shopping_cart, "Belanja Sehat", "dokter"),
                    // _menuItem("images/chat_with_doctor.jpg", "Konsultasi", "/"),
                    // _menuItem("images/buat_janji.png", "Buat Janji", "buat janji"),
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final penyakit = [
    "Maag",
    "Stroke",
    "Jantung",
    "Sakit Kepala",
    "Nyeri Pinggang",
    "Batu Ginjal",
    "Diabetes",
    "Infeksi Saluran Kencing",
    "Kanker",
  ];

  final recentSearch = [
    "Sakit Kepala",
    "Nyeri Pinggang",
    "Stroke",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(Icons.people),
      ),
      title: Text(query),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = this.query.isEmpty
        ? penyakit
        : penyakit.where((p) => p.startsWith(query)).toList() ;

    return ListView.builder(
        itemBuilder: (context, index) => ListTile(
          onTap: () {
            showResults(context);
          },
          leading: Icon(Icons.settings_backup_restore),
          title:
                RichText(
                  text: TextSpan(
                      text: suggestionList[index].substring(0, query.length),
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                      children: [
                        TextSpan(
                            text: suggestionList[index].substring(query.length),
                            style: TextStyle(color: Colors.grey))
                      ]),
                ),
        ),
      itemCount: suggestionList.length,
    );
  }
}

