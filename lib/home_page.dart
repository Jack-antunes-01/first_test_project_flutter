import 'package:first_project/app_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.network(
                    "https://scontent.fudi1-1.fna.fbcdn.net/v/t1.6435-9/121723347_1735383046616474_3984178660275892855_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeHBBytLVc5bHT8VQZGNf6fMF65C1dp9i-QXrkLV2n2L5P9w1qK-EpivjMKTY-1K_Q23HxS6G-a-PNpimG3VssNw&_nc_ohc=iHkLyreKmrAAX-hA_0H&_nc_ht=scontent.fudi1-1.fna&oh=00_AT_ojckv3h4UYacIjfCXmsmonaTon05kzT__we1yJor6Qg&oe=624CC3C8"),
              ),
              accountName: Text("Jackson"),
              accountEmail: Text("jack00@outlook.com"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Início"),
              subtitle: Text("Tela de início"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Sair"),
              subtitle: Text("Finalizar sessão"),
              onTap: () {
                Navigator.of(context).pushReplacementNamed("/");
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Teste"),
        actions: [CustomSwitch()],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          // scrollDirection: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Contador: $counter"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
