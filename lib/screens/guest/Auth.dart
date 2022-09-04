import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
   AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(),
          body: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(
                            text: 'Nous Avons Tous\n'.toUpperCase(),
                            style: TextStyle(
                                color: Colors.cyan,
                                fontSize: 30.0),
                            children: [
                              TextSpan(text:'Les Connaissances\n'.toUpperCase(),
                              style: TextStyle(color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text:'Suppreme.\n' .toUpperCase(),
                              style: TextStyle(color: Colors.black),
                              ),
                            ],
                        ),
                    ),
                    Text('Connectez-vous', style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      height:50.0,),
                    Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text('Entrer votre E-mail'),
                            SizedBox(height: 10.0,
                            ),
                            TextFormField(
                                decoration: InputDecoration(
                                    hintText: 'EX: lionel@gmail.com',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(0.0),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                      ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(0.0),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    ),
                                  )
                                ),
                            ),
                        SizedBox(
                          height: 10.0,
                        ),

                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor:
                                Theme.of(context).colorScheme.onSecondaryContainer,
                                backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
                              ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
                              onPressed:  () =>print ('send'),
                              child: Text('continue'.toUpperCase()),
                            ),

                      ],
                    ),
                    ),
                  ],
                ),
              ),
        ),
    );
  }
}
