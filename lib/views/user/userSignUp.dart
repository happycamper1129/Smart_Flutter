import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jewelery_marketplace/components/default_button.dart';
import 'package:jewelery_marketplace/config/colors.dart';
import 'package:jewelery_marketplace/config/constants.dart';
import 'package:jewelery_marketplace/config/styles.dart';
import 'package:jewelery_marketplace/views/user/getStartedScreen.dart';
import 'package:sticky_headers/sticky_headers.dart';

class UserSignUpScreen extends StatefulWidget {
  UserSignUpScreen(this.accountType);
  final String accountType;

  @override
  _UserSignUpScreenState createState() => _UserSignUpScreenState();
}

class _UserSignUpScreenState extends State<UserSignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController firstNameController =
      TextEditingController(text: auth.currentUser?.displayName?.split(' ')[0]);
  TextEditingController lastNameController =
      TextEditingController(text: auth.currentUser?.displayName?.split(' ')[1]);
  String firstName = '';
  String lastName = '';
  String jobTitle = '';
  String aboutMe = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: false,
          title: Text(
            'Sign Up',
          ),
        ),
        // bottomSheet: ,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Text(
                    'Welcome',
                    style: kBasicStyle.copyWith(fontSize: 40),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 25.0, right: 25, top: 15, bottom: 20),
                    child: Text(
                      'Fill the details below to sign up.',
                      style: kInputHintStyle.copyWith(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: [
                        Image.network(
                          'https://images.unsplash.com/photo-1599707367072-cd6ada2bc375?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80',
                          fit: BoxFit.fitWidth,
                          width: MediaQuery.of(context).size.width,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.add_a_photo,
                            color: Colors.white.withOpacity(0.7),
                            size: 45,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 28.0, right: 28, top: 30),
                          child: TextFormField(
                            controller: firstNameController,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            onChanged: (val) {
                              setState(() {
                                firstName = val;
                              });
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return 'First name is required';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              border: new UnderlineInputBorder(
                                  borderSide: new BorderSide()),
                              labelText: 'First Name*',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 28.0, right: 28, top: 20),
                          child: TextFormField(
                            controller: lastNameController,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            onChanged: (val) {
                              setState(() {
                                lastName = val;
                              });
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return 'Last name is required';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              border: new UnderlineInputBorder(
                                  borderSide: new BorderSide()),
                              labelText: 'Surname*',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 28.0, right: 28, top: 20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: new UnderlineInputBorder(
                                  borderSide: new BorderSide()),
                              labelText: 'Job Title',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 28.0, right: 28, top: 20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: new UnderlineInputBorder(
                                  borderSide: new BorderSide()),
                              labelText: 'About Me',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 15,
                    ),
                    child: DefaultButton(
                      title: 'Next',
                      press: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState?.save();
                          Navigator.pushNamed(context, '/get_started_user',
                              arguments: GetStartedScreen(firstName, lastName,
                                  jobTitle, aboutMe, widget.accountType));
                        }
                      },
                    ),
                  ),
                ],
              ),
              Positioned(
                  top: 230,
                  left: 20,
                  child: CircleAvatar(
                    backgroundColor: Color(0xFF468E80),
                    radius: 50,
                    child: Center(
                      child: Icon(
                        Icons.add_a_photo,
                        color: Colors.white.withOpacity(0.9),
                        size: 45,
                      ),
                    ),
                  )),
            ],
          ),
        ));
  }

  Widget buttonIcon(String text, Color colorbox, Color colortext) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: EdgeInsets.only(
          right: 10,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            height: 30,
            width: 95,
            decoration: BoxDecoration(
                color: colorbox,
                border: Border.all(
                    color: Colors.black38.withOpacity(0.2), width: 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                )),
            child: Center(
              child: Text(
                text,
                style: kInputStyle.copyWith(
                    color: colortext, fontWeight: FontWeight.w900),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buttonText(String text, Color colorbox, Color colortext) {
    return Expanded(
      flex: 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Container(
          height: 45,
          width: 95,
          decoration: BoxDecoration(
              color: colorbox,
              border:
                  Border.all(color: Colors.black38.withOpacity(0.2), width: 1),
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              )),
          child: Center(
            child: Text(
              text,
              style: kInputStyle.copyWith(
                  color: colortext, fontWeight: FontWeight.w900),
            ),
          ),
        ),
      ),
    );
  }
}
