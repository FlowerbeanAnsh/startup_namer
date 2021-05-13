import "package:flutter/material.dart";
import "package:flutter/cupertino.dart";

class MyDrawer extends StatelessWidget {
  final image_url = "https://pbs.twimg.com/profile_images/1376944771269160960/8Ux9mZsz_400x400.jpg";
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.purple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding : EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,

                accountName: Text("Ansh Saxena"),
                accountEmail: Text("ansh@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(image_url),

                )

              ),

            ),
            ListTile(
              leading:Icon(CupertinoIcons.home,
              color: Colors.white
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color : Colors.white,
                ),
              ),
            ),
            ListTile(
              leading:Icon(CupertinoIcons.profile_circled,
                  color: Colors.white
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color : Colors.white,
                ),
              ),
            ),
            ListTile(
              leading:Icon(CupertinoIcons.mail,
                  color: Colors.white
              ),
              title: Text(
                "Email me",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color : Colors.white,
                ),
              ),
            )

          ],
        ),
      )
      ,

    );
  }
}
