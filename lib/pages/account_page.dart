import 'package:flutter/material.dart';
import 'package:travel_ui/base_config.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: secondaryColor.withOpacity(0.5),
                  ),
                  child: Icon(
                    Icons.person,
                    color: Colors.grey.withOpacity(0.9),
                  ),
                ),
                Container(
                  height: 150,
                  width: 150,
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.edit,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Text(
              "User Traveler",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "usertraveler@gmail.com",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 17,
              ),
            ),
            SizedBox(height: 40),
            listTile(
              context: context,
              icon: Icon(
                Icons.history,
                color: Colors.white,
              ),
              label: "History",
              color: primaryColor,
            ),
            SizedBox(height: 10),
            listTile(
              context: context,
              icon: Icon(
                Icons.security,
                color: Colors.white,
              ),
              label: "Privacy Police",
              color: secondaryColor,
            ),
            SizedBox(height: 10),
            listTile(
              context: context,
              icon: Icon(
                Icons.help,
                color: Colors.white,
              ),
              label: "About US",
              color: accentColor1,
            ),
            Expanded(child: Container()),
            listTile(
              context: context,
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
              label: "Logout",
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }

  Widget listTile(
      {BuildContext context,
      Function onTap,
      String label,
      Icon icon,
      Color color}) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width - 60,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: color.withOpacity(0.7) ?? Colors.grey,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              icon ?? SizedBox(),
              SizedBox(width: 10),
              Text(
                label ?? "",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: 15,
          ),
        ],
      ),
    );
  }
}
