import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const Profile(),
    );
  }
}

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isObsecurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {  },
        ),
        actions: [
          IconButton(onPressed: () {},
          icon: Icon(
            Icons.settings,
            color: Colors.white,
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, top: 20, right: 15),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        border:Border.all(width: 4, color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1)
                          )
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://instagram.fbpn2-1.fna.fbcdn.net/v/t51.2885-19/275291441_1430646934017657_1705123590073984877_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fbpn2-1.fna.fbcdn.net&_nc_cat=109&_nc_ohc=mHm69z_9ipYAX8beHB_&tn=xUJRKIofOY1rKOjn&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfCLe-PVQnSkuitQPUDup70rSQBTeyKqJ9aGkN_J1iD_yQ&oe=6400195D&_nc_sid=8fd12b'
                          )
                        )
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 4,
                            color: Colors.white,
                          ),
                          color: Colors.blue
                        ),
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                    )
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              buildTextField("Nama Panjang", "Vicalis Armonanda", false),
              buildTextField("NIM", "2009116009", false),
              buildTextField("Alamat", "Samarinda", false),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    child: Text("CANCEL", style: TextStyle(
                      fontSize: 15,
                      letterSpacing: 2,
                      color: Colors.black,
                    )),
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {}, 
                    child: Text("SAVE", style: TextStyle(
                      fontSize: 15,
                      letterSpacing: 2,
                      color: Colors.white
                    )),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                    ),
                    )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: TextField(
        obscureText: isPasswordTextField ? isObsecurePassword : false,
        decoration: InputDecoration(
          suffixIcon: isPasswordTextField ?
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.remove_red_eye, color: Colors.grey),
            ): null,
        contentPadding: EdgeInsets.only(bottom: 5),
        labelText: labelText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: placeholder,
        hintStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.grey
        )
        ),
      ),
      );
  }
}