import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Lucas Dennis"),
            accountEmail: Text("lucasdeekay98@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage(
                  "assets/images/alesia-kazantceva-VWcPlbHglYc-unsplash.jpg"),
            ),
            decoration: BoxDecoration(color: Colors.indigoAccent),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Kolawole Dennis"),
            subtitle: const Text("Software Developer"),
            trailing: const Icon(Icons.edit),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.email),
            title: const Text("lucasdeekay98@gmail.com"),
            trailing: const Icon(Icons.edit),
            onTap: () => {},
          ),
        ],
      ),
    );
  }
}
