import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FILOS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

Widget _buildGridItem({
  required IconData icon,
  required String title,
  required VoidCallback onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[300]!,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 30,
            color: Color.fromARGB(255, 98, 110, 119),
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: Color.fromARGB(255, 98, 110, 119),
            ),
          ),
        ],
      ),
    ),
  );
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: const Color.fromARGB(255, 98, 110, 119),
        title: Text(
          'Partner Lansia',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),

      actions: [
        IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
            },
          ),

        IconButton(
          icon: Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ],
        elevation: 0,
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Header Drawer
            DrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 29, 35, 40),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        foregroundImage: AssetImage(
                          'images/Formal.jpg'
                          ),
                        child: Icon(Icons.person, size: 35),
                      ),

                      SizedBox(width: 15),
                      
                      Expanded(
                        child: Text(
                          'Denilson Leonardo Natu',  
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),  
                    ],
                  ),
                  
                  SizedBox(height: 25),

                  Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.white70,
                        size: 17,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'natudenilson@gmail.com',  
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 5),
                  
                  Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.white70,
                        size: 17,
                      ),
                      SizedBox(width: 10),
                      Text(
                        '+62 821 9030 7865',  
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            
            // Menu Items
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Beranda'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profil'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Pengaturan'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            
            Divider(),

            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Keluar'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  fit: FlexFit.loose,
                  child:Container(
                    width: 1000,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 254, 247, 255),
                      border: Border.all(
                        width: 0.5,
                        color: Colors.grey,
                        ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 10, 
                          spreadRadius: 2, 
                          offset: Offset(0, 5), 
                        )
                      ]
                    ),

                    child: Padding(
                      padding: EdgeInsetsDirectional.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'SELAMAT DATANG',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 30),

                          GridView.count(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            children: [
                              _buildGridItem(
                                icon: Icons.medical_services,
                                title: 'Daftar Layanan',
                                onTap: () {},
                              ),
                              _buildGridItem(
                                icon: Icons.people,
                                title: 'Pendamping',
                                onTap: () {},
                              ),
                              _buildGridItem(
                                icon: Icons.calendar_today,
                                title: 'Jadwal',
                                onTap: () {},
                              ),
                              _buildGridItem(
                                icon: Icons.emergency,
                                title: 'Darurat',
                                onTap: () {},
                              ),

                            ],
                          ),
                        ],
                      )
                    )
                  ),
                ),
              ],    
            ),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
