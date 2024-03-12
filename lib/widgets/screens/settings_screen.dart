import 'package:chop_shop/ui/colors.dart';
import 'package:chop_shop/widgets/widgets/drawer.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  SettingsScreenState createState() => SettingsScreenState();
}

class SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBackgroundColor,
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: const Text("Настройки"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: appbarBackgroundColor,
        foregroundColor: appbarForegroundColor,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.network(
                "https://www.wmj.ru/imgs/2020/10/23/18/4300765/75ca401ba4ef59c4222c54c26ac7cc22d032b145.jpg",
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonBackgroundColor,
                foregroundColor: buttonForegroundColor,
              ),
              onPressed: () {},
              child: const Text("Сменить фото профиля"),
            ),
          ),
          SwitchListTile(
            title: const Text("Темная тема"),
            value: false,
            onChanged: (value) {},
          ),
          ListTile(
            title: const Text('Максим'),
            subtitle: const Text("Ваше имя"),
            trailing: IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {},
            ),
          ),
          ListTile(
            title: const Text("Николаев"),
            subtitle: const Text("Ваша фамилия"),
            trailing: IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {},
            ),
          ),
          ListTile(
            title: const Text("NikolaevMA21@st.ithub.ru"),
            subtitle: const Text("Ваш email"),
            trailing: IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {},
            ),
          ),
          ListTile(
            title: const Text("+79372361946"),
            subtitle: const Text("Ваш номер телефона"),
            trailing: IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {},
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigator.of(context).pushReplacement(MaterialPageRoute(
              //   builder: (context) => AuthenticationScreen(),
              // ));
              // isAuth = false;
              // user.name = '';
              // user.surname = '';
              // user.email = '';
              // user.phoneNumber = '';
              // user.profileImage = '';
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: buttonBackgroundColor,
              foregroundColor: buttonForegroundColor,
              shape: const StadiumBorder(),
              padding: const EdgeInsets.all(16.0),
              elevation: 15,
              shadowColor: Colors.deepPurple.shade400,
              minimumSize: const Size.fromHeight(50),
              maximumSize: const Size.fromHeight(50),
              textStyle: const TextStyle(fontSize: 15),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: const Text("Очистить память"),
          ),
        ],
      ),
    );
  }
}
