import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emran92/constants/app_color.dart';
import 'package:emran92/widgets/error_dialogue.dart';
import 'package:emran92/widgets/input_decoration.dart';
import 'package:firebase/firebase.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uuid/uuid.dart';

class ContactTabletDesktop extends StatefulWidget {
  @override
  _ContactTabletDesktopState createState() => _ContactTabletDesktopState();
}

class _ContactTabletDesktopState extends State<ContactTabletDesktop> {
  String name;
  String email;
  String message;
  String contactId = Uuid().v4();
  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Contact',
          style: GoogleFonts.righteous(fontSize: 50, color: primaryColor),
        ),
        SizedBox(
          height: 50,
        ),
        Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.40,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.white),
                  decoration: kInputDecoration(
                    hintText: "Your Name",
                  ),
                  validator: (val) =>
                      val.isEmpty ? 'Please enter your name' : null,
                  onChanged: (val) => setState(() => name = val),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.40,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.white),
                  decoration: kInputDecoration(
                    hintText: "What's your email?",
                  ),
                  validator: (val) => val.isEmpty ? 'Please enter email' : null,
                  onChanged: (val) => setState(() => email = val),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.40,
                child: TextFormField(
                  maxLines: 5,
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.white),
                  decoration: kInputDecoration(
                    hintText: "Your Message....",
                  ),
                  validator: (val) =>
                      val.isEmpty ? 'Please enter your questions' : null,
                  onChanged: (val) => setState(() => message = val),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              isLoading
                  ? CircularProgressIndicator()
                  : RaisedButton(
                      onPressed: () async {
                        if (_formKey.currentState.validate()) {
                          setState(() {
                            isLoading = true;
                          });
                          try {
                            await Firestore.instance
                                .collection('contacts')
                                .document(contactId)
                                .setData({
                              'id': contactId,
                              'name': name,
                              'email': email,
                              'message': message,
                              'posted': FieldValue.serverTimestamp(),
                            });
                            errorDialogue(
                                errorText:
                                    'Thank you. I will get back to you soon',
                                context: context);
                            setState(() {});
                            Future.delayed(Duration(milliseconds: 5000));
                            setState(() {
                              isLoading = false;
                            });
                          } on FirebaseError catch (e) {
                            errorDialogue(
                                errorText: e.toString(), context: context);
                          }
                        }
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.tealAccent, primaryColor],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Container(
                          constraints:
                              BoxConstraints(maxWidth: 350.0, minHeight: 50.0),
                          alignment: Alignment.center,
                          child: Text(
                            "Send Message",
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ],
    );
  }
}
