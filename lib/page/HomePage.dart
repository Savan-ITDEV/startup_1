import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget drawer = Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        UserAccountsDrawerHeader(
            currentAccountPicture: Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.circular(50)),
                elevation: 5,
                child: Image.asset(
                  'assets/img/unnamed.jpg',
                  fit: BoxFit.fill,
                )),
            accountName: Text('SavanitDev'),
            accountEmail: Text('SavanitDev@gmail.com')),
        ListTile(title: Text('ຫນ້າແລກ')),
        ListTile(title: Text('ຫນ້າຄວດຄຸມ')),
        ListTile(title: Text('ຕັ້ງຄ່າ')),
        ListTile(title: Text('ລົງຊື່ອອກຈາກລະບົບ')),
      ],
    ),
  );
  var indexCurrent = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('SavanItDev'),
        // leading: Icon(Icons.list),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.filter_list), onPressed: () {})
        ],
      ),
      body: ListView.builder(
          itemCount: 4,
          itemBuilder: (BuildContext, i) {
            return Padding(
              padding: const EdgeInsets.all(11),
              child: Card(
                  elevation: 3,
                  child: Container(
                      height: 200,
                      child:
                          Image.asset('assets/img/wed.jpg', fit: BoxFit.fill))),
            );
          }),
      drawer: drawer,
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex:
              indexCurrent, // ກຳນົດ indexCurrent ເປັນຕົວເກັບຕົວແປການປະຈຸບັນ
          onTap: (i) {
            setState(() {
              // ໃຊ້ສຳຫລັບ build ໃຫມ່ຂອງຫນ້າ StatefulWidget
              indexCurrent = i; //  indexCurrent ຈະເກັບເອົາຄ່າທີ່ໄດ້ຈາກ i
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), title: Text('Profile')),
            BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard), title: Text('Gift')),
          ]),
    );
  }
}
