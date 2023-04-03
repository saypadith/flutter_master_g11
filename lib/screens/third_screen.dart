import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_starter/common/header_text_widget.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Third Screen"),
      ),
      body: Container(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(32),
              child: Image.network(
                "https://picsum.photos/300/200",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 24),
            HeaderText(
              text: "ສະຖານທີ່ທີ່ແນະນຳ",
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      print("Clicked");
                    },
                    child: Column(
                      children: [
                        Icon(Icons.percent, size: 48),
                        Text("ຫຼວງພະບາງ")
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Icon(Icons.offline_bolt, size: 48),
                      Text("ປາກເຊ")
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.assist_walker, size: 48),
                      Text("ວັງວຽງ")
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.g_mobiledata, size: 48),
                      Text("ສະຫວັນນະເຂດ")
                    ],
                  ),
                ],
              ),
            ),
            HeaderText(
              text: "ສະຖານທີ່ຍອດນິຍົມ",
            ),
            Row(
              children: [
                Image.asset(
                  "assets/images/corgi.png",
                  width: MediaQuery.of(context).size.width * 0.40,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    width: MediaQuery.of(context).size.width * 0.50,
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                      maxLines: 8,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
