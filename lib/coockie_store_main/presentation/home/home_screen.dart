import 'dart:html';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  /*para controlar*/
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*el app bar de la parte superior*/
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xFF545D68),
          ),
          onPressed: () {},
        ),
        title: Text(
          "Pickup",
          style: TextStyle(
            fontFamily: 'Varela',
            fontSize: 20.0,
            color: Color(0xFF545D68),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications_none,
              color: Color(0xFF545D68),
            ),
            onPressed: () {},
          ),
        ],
      ),
      /*cuerpo de la pagina*/
      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: [
          SizedBox(
            height: 15.0,
          ),
          Text(
            "Categories",
            style: TextStyle(
              fontFamily: "Varela",
              fontSize: 42.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          /*EL TAB ES EL QUE ESTA ARRIBA DEL CONTENIDO O CARDS*/
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
            labelColor: Color(0xFFC88D67),
            isScrollable: true,
            labelPadding: EdgeInsets.only(right: 45.0),
            unselectedLabelColor: Color(0XFFCDCDCD),
            tabs: [
              Tab(
                child: Text(
                  "Ice cream",
                  style: TextStyle(
                    fontFamily: "Varela",
                    fontSize: 21.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Ice cream",
                  style: TextStyle(
                    fontFamily: "Varela",
                    fontSize: 21.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Ice cream",
                  style: TextStyle(
                    fontFamily: "Varela",
                    fontSize: 21.0,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
