import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 2.0), // Adjust the bottom padding
                child: Container(
                  width: double.infinity, // Make the width of the container the same as the screen
                  height: 160,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/luckdraw2.jpeg',
                      fit: BoxFit.cover, // Ensure the image covers the entire container
                    ),
                  ),
                ),
              ),
              Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black), // Black border
                  color: Color.fromRGBO(155, 121, 234, 1),
                ),
                child: Center(
                  child: Text(
                    "CHOOSE WISELY!",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22, // Increased font size
                      fontWeight: FontWeight.bold, // Bold text
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8), // Rounded corners
                      border: Border.all(color: Colors.black), // Black border
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/golden chest.jpeg',
                        height: 110,
                        width: 150,
                        fit: BoxFit.cover, // Ensure the image covers the entire container
                      ),
                    ),
                  ),
                  SizedBox(width: 7,),
                  Container(
                    height: 45,
                    width: 200,
                    color: Colors.blue,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.yellow),
                      ),
                      child: Text(
                        "Golden chest",
                        style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        final snackbar = SnackBar(
                          action: SnackBarAction(
                            label: 'Try again',
                            textColor: Color.fromARGB(255, 139, 2, 164),
                            onPressed: () {},
                          ),
                          content: Text('All that glitters is not gold. You lose.', style: TextStyle(color: Colors.black),),
                          backgroundColor: Color.fromARGB(255, 249, 150, 2),
                          duration: const Duration(milliseconds: 3000),
                          behavior: SnackBarBehavior.floating,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackbar);
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8), // Rounded corners
                      border: Border.all(color: Colors.black), // Black border
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/silver chest.jpeg',
                        height: 105,
                        width: 150,
                        fit: BoxFit.cover, // Ensure the image covers the entire container
                      ),
                    ),
                  ),
                  SizedBox(width: 7,),
                  Container(
                    height: 45,
                    width: 200,
                    color: Colors.blue,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.yellow),
                      ),
                      child: Text(
                        "Silver chest",
                        style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        final snackbar = SnackBar(
                          action: SnackBarAction(
                            label: 'Try again',
                            textColor: Color.fromARGB(255, 139, 2, 164),
                            onPressed: () {},
                          ),
                          content: Text('Hope you had been as wise as this colour. You lose.', style: TextStyle(color:Colors.black),),
                          backgroundColor: Color.fromARGB(255, 249, 150, 2),
                          duration: const Duration(milliseconds: 3000),
                          behavior: SnackBarBehavior.floating,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackbar);
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8), // Rounded corners
                      border: Border.all(color: Colors.black), // Black border
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/bronzechest.jpeg',
                        height: 105,
                        width: 150,
                        fit: BoxFit.cover, // Ensure the image covers the entire container
                      ),
                    ),
                  ),
                  SizedBox(width: 7,),
                  Container(
                    height: 45,
                    width: 200,
                    color: Colors.blue,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.yellow),
                      ),
                      child: Text(
                        "Lead chest",
                        style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        final snackbar = SnackBar(
                          action: SnackBarAction(
                            label: 'Yay!',
                            textColor: Color.fromARGB(255, 139, 2, 164),
                            onPressed: () {},
                          ),
                          content: Text('You have been wise. You win', style: TextStyle(color: Colors.black),),
                          backgroundColor: Color.fromARGB(255, 91, 240, 96),
                          duration: const Duration(milliseconds: 3000),
                          behavior: SnackBarBehavior.floating,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackbar);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}