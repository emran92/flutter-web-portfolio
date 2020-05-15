import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

errorDialogue({String errorText, BuildContext context}){
  showGeneralDialog(
      context: context,
      // ignore: missing_return
      pageBuilder: (context, anim1, anim2) {},
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.4),
      barrierLabel: '',
      transitionDuration: Duration(milliseconds: 200),
      transitionBuilder: (context, anim1, anim2, child) {
        return FadeTransition(
          opacity: anim1,
          child: Theme(
            data: Theme.of(context)
                .copyWith(dialogBackgroundColor: Colors.transparent),
            child: AlertDialog(
              contentPadding: EdgeInsets.all(8.0),
              content: Container(
                height: 200,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      blurRadius: 30,
                      spreadRadius: 1,
                      offset: Offset(0, 5),
                      color: Colors.grey.withOpacity(0.2),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        errorText.toString(),
                        style: GoogleFonts.righteous(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        new FlatButton(
                          onPressed: () => Navigator.pop(context),
                          child: new Text(
                            'Ok',
                            style: GoogleFonts.righteous(
                              fontSize: 20,
                              color: Colors.tealAccent,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      });
}