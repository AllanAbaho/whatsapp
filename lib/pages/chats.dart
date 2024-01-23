import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  final List<Message> messages = [
    Message('1.jpg', 'Cristiano 🐐', '3:00pm', "Haha nah!", 'sent'),
    Message('8.jpg', 'Babe', '2:55pm', "Sis has a cold, can't make it😌",
        'delivered'),
    Message('2.jpg', 'Megan Thee Stallion', '2:55pm',
        "In january most probably", 'delivered'),
    Message('3.jpg', 'Dua Lipa', '2:53pm', "Yea backstage lol", 'read'),
    Message('4.jpg', 'Oprah', '3:00pm', "Just keep pushing son", 'sent'),
    Message('5.jpg', 'Davido', '2:55pm', "Abeg 😁 ", 'delivered'),
    Message(
        '6.jpg', 'Saka', '2:53pm', "Yea our next game is away mate", 'read'),
    Message(
        '7.jpg', 'Idris', '3:00pm', "You can make it if you persist", 'sent'),
    Message('9.jpg', 'Ariana', '2:53pm', "Tomorrow then", 'read'),
    Message(
        '10.jpg', 'Cynthia', '3:00pm', "Let's meet at 10pm tonight", 'sent'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: messages
            .map(
              (e) => Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12.0, horizontal: 15),
                child: Row(
                  children: [
                    Visibility(
                      visible: e.status != 'sent',
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 37, 199, 140),
                                width: 2),
                            borderRadius: BorderRadius.circular(100)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            'assets/${e.image}',
                            height: 50,
                            width: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: e.status == 'sent',
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          'assets/${e.image}',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.66,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(e.name,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white)),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: [
                                e.status == 'sent'
                                    ? Icon(
                                        Icons.check,
                                        color: Colors.white60,
                                        size: 18,
                                      )
                                    : e.status == 'delivered'
                                        ? Icon(
                                            Icons.done_all,
                                            color: Colors.white60,
                                            size: 18,
                                          )
                                        : Icon(
                                            Icons.done_all,
                                            color: Color.fromARGB(
                                                255, 86, 235, 235),
                                            size: 18,
                                          ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  e.content,
                                  style: TextStyle(color: Colors.white70),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text(e.time, style: TextStyle(color: Colors.white60))
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class Message {
  final String image;
  final String name;
  final String time;
  final String content;
  final String status;

  Message(this.image, this.name, this.time, this.content, this.status);
}
