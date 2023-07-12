import 'package:flutter/material.dart';

class Starbuck extends StatelessWidget {
  const Starbuck({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Starbuck'),
      ),

      body:  Column(
        children: [
          //Text title
          const Row(
            children: [
              Flexible(
                child: Text(
                  "It's a great day for coffee ☕",
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),

          //contact menu
          Row(
            children: [
              //Sign in
              Container(
                height: 40,
                width: 100,
                color: null,
                child: const Row(
                  children: [
                    Icon(Icons.account_circle,
                      size: 24,
                      color: Colors.grey,
                    ),

                    SizedBox(
                      width: 5,
                    ),

                    Text("Sign in",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                )
              ),

              const SizedBox(
                width: 10,
              ),

              //Inbox
              Container(
                height: 40,
                width: 100,
                color: null,
                child: const Row(
                  children: [
                    Icon(Icons.mail,
                      size: 24,
                      color: Colors.grey,
                    ),

                    SizedBox(
                      width: 5,
                    ),

                    Text("Inbox",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                )
              ),

              const SizedBox(
                width: 160,
              ),

              //Setting
              Container(
                height: 40,
                width: 40,
                color: null,
                child: const Icon(Icons.settings, color: Colors.grey,),
              ),
            ],
          ),

          const SizedBox(
            height: 10,
          ),

          //Content 1
          Container(
            height: 250,
            width: width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/mobile_n_pay.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            //color: Colors.amber,
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("WHAT'S NEW",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),

                  const Text("Mobile Order & Pay",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),

                  const SizedBox(height: 100),

                  TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(10),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.green,
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))
                      ),
                    ),
                    onPressed: () {},
                    child: Container(
                      width: 150,
                      color: null,
                      child: const  Center(
                        child: Text('More detils'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          Container(
            height: 250,
            width: width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/happy_holiday.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            //color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("WHAT'S NEW",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),

                  const Text("Happy Holiday",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),

                  const SizedBox(height: 100),

                  TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(10),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.green,
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))
                      ),
                    ),
                    onPressed: () {},
                    child: Container(
                      width: 150,
                      color: null,
                      child: const  Center(
                        child: Text('More detils'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: Colors.green,
        label: const Text('Join now',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        iconSize: 30,
        selectedFontSize: 15,
        unselectedFontSize: 15,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.star, color: Colors.grey),
            label: 'Home',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card, color: Colors.grey), 
            label: 'Card',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.coffee, color: Colors.grey), 
            label: 'Order',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store, color: Colors.grey), 
            label: 'Stores',
            backgroundColor: Colors.green,
          ),
        ]
      ),
    );
  }
}