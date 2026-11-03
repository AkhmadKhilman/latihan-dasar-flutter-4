import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Demo Widget List Title",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Demo Widget List View"),
          backgroundColor: Colors.black26,
        ),
        body: Column(
          children: [
            Container(
              child: Column(
                children: [
                  MyListTitle(
                    icon: Icons.person_2_rounded,
                    title: "Nama",
                    value: "Danu",
                  ),
                  MyListTitle(
                    icon: Icons.mail_rounded,
                    title: "Email",
                    value: "danu@example.com",
                  ),
                  MyListTitle(
                    icon: Icons.phone_android_rounded,
                    title: "Telepon",
                    value: "081234567890",
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            Container(
              child: Column(
                children: [
                  InfoRow(
                    ikan: Icons.person_2,
                    judul: "Nama",
                    isi: "Danu Tirta Cahyo Kurniawan",
                  ),
                  InfoRow(
                    ikan: Icons.mail_lock,
                    judul: "Email",
                    isi: "danucahyo999@palembang.xyz",
                  ),
                  InfoRow(
                    ikan: Icons.phone_android,
                    judul: "Telphone",
                    isi: "0858, sisanya kapan-kapan",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyListTitle extends StatelessWidget {
  const MyListTitle({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });

  final IconData icon;
  final String title, value;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      subtitle: Text(value),
      textColor: Colors.yellow,
      iconColor: Colors.cyan,
      tileColor: Colors.black54,
    );
  }
}

class InfoRow extends StatelessWidget {
  const InfoRow({
    super.key,
    required this.ikan,
    required this.judul,
    required this.isi,
  });

  final IconData ikan;
  final String judul, isi;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(ikan, size: 30),
        SizedBox(width: 8),
        Column(children: [Text(judul), SizedBox(height: 8), Text(isi)]),
      ],
    );
  }
}
