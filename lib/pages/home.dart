import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsapp/pages/calls.dart';
import 'package:whatsapp/pages/chats.dart';
import 'package:whatsapp/pages/status.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xFF131920),
        appBar: AppBar(
          backgroundColor: Color(0xFF202a33),
          elevation: 3,
          bottom: TabBar(
            indicatorColor: const Color(0xFF055f51),
            indicatorWeight: 3,
            tabs: [
              const Tab(
                child: Text(
                  'Chats',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 9, 132, 113),
                  ),
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        'Status',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white60,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.fiber_manual_record,
                      size: 7,
                    )
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text(
                        'Calls',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white60,
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        color: Colors.white60,
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.0),
                          child: Text(
                            '5',
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          title: const Text(
            'WhatsApp',
            style: TextStyle(
              fontSize: 22,
              color: Colors.white60,
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.camera_alt,
                color: Colors.white60,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.search,
                color: Colors.white60,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.more_vert,
                color: Colors.white60,
              ),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Chats(),
            Status(),
            Calls(),
          ],
        ),
      ),
    );
  }
}
