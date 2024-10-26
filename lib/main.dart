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

class _MyHomePageState extends State<MyHomePage> {
  Widget _buildGridItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
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
              color: const Color.fromARGB(255, 223, 242, 236),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 223, 242, 236),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 185, 229, 232),
      body: Column(
        children: [
          Container(
            color: const Color.fromARGB(255, 74, 97, 138),
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SafeArea(
              child: Row(
                children: [
                  const Padding(padding: EdgeInsets.only(left: 10)),
                  const CircleAvatar(
                    radius: 20,
                    backgroundColor: Color.fromARGB(255, 223, 242, 236),
                    foregroundImage: AssetImage('images/Formal.jpg'),
                    child: Icon(Icons.person, size: 25),
                  ),
                  const SizedBox(width: 15),
                  const Expanded(
                    child: Text(
                      'Partner Lansia',
                      style: TextStyle(
                        color: Color.fromARGB(255, 223, 242, 236),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.notifications,
                          color: Color.fromARGB(255, 223, 242, 236),
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.settings,
                          color: Color.fromARGB(255, 223, 242, 236),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Container(
                  width: 250,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 122, 178, 211),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(0),
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(0)
                      )
                    ),
                    
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.all(10)),
                      ListTile(
                        leading: const Icon(
                          Icons.home, 
                          color: Color.fromARGB(255, 223, 242, 236)
                        ),
                        title: const Text(
                          'Home', 
                          style: TextStyle(
                            color: Color.fromARGB(255, 223, 242, 236)
                          )
                        ),
                        onTap: () {},
                      ),

                      ListTile(
                        leading: const Icon(
                          Icons.person, 
                          color: Color.fromARGB(255, 223, 242, 236)
                        ),
                        title: const Text(
                          'Profil', 
                          style: TextStyle(
                            color: Color.fromARGB(255, 223, 242, 236)
                          )
                        ),
                        onTap: () {},
                      ),

                      ListTile(
                        leading: const Icon(
                          Icons.announcement, 
                          color: Color.fromARGB(255, 223, 242, 236)
                        ),
                        title: const Text(
                          'Pengumuman', 
                          style: TextStyle(
                            color: Color.fromARGB(255, 223, 242, 236)
                          )
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          const SizedBox(height:5),
                          Container(
                            width: 1000,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 122, 178, 211),
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
                                  offset: const Offset(0, 5),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    'SELAMAT DATANG',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 223, 242, 236),
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 30),
                                  GridView.count(
                                    shrinkWrap: true,
                                    physics: const NeverScrollableScrollPhysics(),
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
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
