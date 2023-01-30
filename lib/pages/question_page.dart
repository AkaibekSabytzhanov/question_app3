import 'package:flutter/material.dart';
import 'package:question_app3/suroo_data/suroo_data.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuesPage extends StatefulWidget {
  const QuesPage({Key? key});

  @override
  State<QuesPage> createState() => _QuesPageState();
}

class _QuesPageState extends State<QuesPage> {
  int totalCorrect = 0;
  int totalQuestions = 0;
  List<Icon> icons = <Icon>[];

  void koldonuuchununJooby(bool userAnswer) {
    bool turaaJoop = SurooData().jooptyAlypKel();
    if (turaaJoop == userAnswer) {
      icons.add(const Icon(Icons.check, color: Colors.green));
    } else {
      icons.add(const Icon(Icons.clear, color: Colors.red));
    }

    surooData.suroonuOtkoz();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: const Text("Суроо-Жооп"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 45.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  setState(() {});
                  surooData.suroonuNolgoKaitar();
                  icons = [];
                },
                child: Container(
                  child: Center(
                      child: Text(
                    surooData.suroonuAlypKel(),
                    style: TextStyle(color: Colors.white),
                  )),
                  width: MediaQuery.of(context).size.width * 0.96,
                  height: MediaQuery.of(context).size.height * 0.2,
                  color: Colors.teal,
                ),
              ),
            ),
            const SizedBox(height: 45.0),
            GestureDetector(
              onTap: () => koldonuuchununJooby(true),
              child: Container(
                child: Center(
                    child: Text("Туура", style: TextStyle(fontSize: 20.0))),
                width: MediaQuery.of(context).size.width * 0.66,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.shade900,
                      blurRadius: 4.0,
                      offset: const Offset(1.0, 8.0), // Shadow position
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 45.0),
            GestureDetector(
              onTap: () => koldonuuchununJooby(false),
              child: Container(
                child: Center(
                    child:
                        Text("Туура эмес", style: TextStyle(fontSize: 20.0))),
                width: MediaQuery.of(context).size.width * 0.66,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red.shade900,
                      blurRadius: 4.0,
                      offset: const Offset(1.0, 8.0), // Shadow position
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 125.0),
            Container(
              child: Row(children: icons),
              width: MediaQuery.of(context).size.width * 0.99,
              height: MediaQuery.of(context).size.height * 0.05,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
