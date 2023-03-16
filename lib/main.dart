import 'package:flutter/material.dart';

void main() => runApp(CipherApp());

class CipherApp extends StatefulWidget {
  @override
  _CipherAppState createState() => _CipherAppState();
}

class _CipherAppState extends State<CipherApp> {
  TextEditingController _textEditingController = TextEditingController();
  String _result = '';

  void _encrypt() {
    String text = _textEditingController.text.toLowerCase();
    String result = '';

    for (int i = 0; i < text.length; i++) {
      if (text[i] == ' ') {
        result += ' ';
      } else {
        int ascii = text.codeUnitAt(i);
        int shiftedAscii = ((ascii - 97 + 3) % 26) + 97;
        result += String.fromCharCode(shiftedAscii);
      }
    }

    setState(() {
      _result = result.toUpperCase();
    });
  }

  void _decrypt() {
    String text = _textEditingController.text.toLowerCase();
    String result = '';

    for (int i = 0; i < text.length; i++) {
      if (text[i] == ' ') {
        result += ' ';
      } else {
        int ascii = text.codeUnitAt(i);
        int shiftedAscii = ((ascii - 97 - 3 + 26) % 26) + 97;
        result += String.fromCharCode(shiftedAscii);
      }
    }

    setState(() {
      _result = result.toUpperCase();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cipher App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cipher App'),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                controller: _textEditingController,
                decoration: InputDecoration(
                  labelText: 'Text',
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                child: Text('Encrypt'),
                onPressed: _encrypt,
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                child: Text('Decrypt'),
                onPressed: _decrypt,
              ),
              SizedBox(height: 16.0),
              Text(
                'Result: $_result',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'KETERANGAN RUMUS',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Positioned(
                  top: 0,
                  left: 0,
                  child: Text(
                    'Rumus yang di terapkan pada aplikasi chiper ini yaitu ((ascii - 97 - 3 + 26) % 26) + 97. Rumus tersebut digunakan untuk menggeser nilai bilangan bulat ASCII dari sebuah karakter pesan teks sebanyak 3 karakter ke kiri (dalam urutan alfabet) atau sebanyak 3 karakter ke kanan (dalam urutan alfabet) tergantung pada apakah pesan teks sedang dienkripsi atau didekripsi.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Inter',
                        fontSize: 20,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
