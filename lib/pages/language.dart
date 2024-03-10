import 'package:flutter/material.dart';
import 'package:project5/pages/regist.dart'; 
class LanguagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Выбор языка'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegistrationPage(), 
                  ),
                );
              },
              child: Text('Казахский'),
            ),
            ElevatedButton(
              onPressed: () {
                
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegistrationPage(), 
                  ),
                );
              },
              child: Text('Русский'),
            ),
            ElevatedButton(
              onPressed: () {
                
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegistrationPage(), 
                  ),
                );
              },
              child: Text('English'),
            ),
          ],
        ),
      ),
    );
  }
}
