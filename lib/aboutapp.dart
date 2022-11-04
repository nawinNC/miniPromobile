import 'package:flutter/material.dart';

class aboutapp extends StatelessWidget {
  const aboutapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        leading: const Icon(null),
        centerTitle: true,
        title: const Text(' AboutUs ',
            style: TextStyle(
                fontSize: 26, fontFamily: 'Hey', color: Colors.black)),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: const Text(
              '   Application นี้จัดทำขึ้นเพื่อเเนะนำสถาที่ท่องเที่ยวที่\nน่าสนใจในแต่ละภูมิภาคและแต่ละจังหวัดในประเทศไทย\nโดยจะมีข้อมูลเบื้องต้น เช่น ประวัติของสถานที่นั้นๆ \nเวลาเปิดทำการ การเดินทาง และค่าธรรมเนียมการเข้าชม เป็นต้น หากมีข้อผิดพลาดและข้อเสนอแนะประการใด\nทางคณะผู้จัดทำขอน้อมรับไว้และขออภัยมา ณ ที่นี้',
              style: TextStyle(
                  fontSize: 15, wordSpacing: 10, fontFamily: 'Athiti'),
            ),
          ),
          Container(
            child: const Center(
              child: Text('ผู้จัดทำ',
                  style: TextStyle(
                      fontSize: 18,
                      wordSpacing: 10,
                      fontFamily: 'Athiti',
                      color: Color.fromARGB(255, 47, 0, 255),
                      decoration: TextDecoration.underline)),
            ),
          ),
          Container(
              padding: const EdgeInsets.all(15),
              child: const Center(
                  child: Text(
                'นาย    กันตพงษ์  กลิ่นเนียม  116310400321-0\nนาย    นาวิน  ไชยเสนา       116310400485-3\nนางสาว นุจิรา  จำเริญ         116310400552-0',
                style: TextStyle(
                    fontSize: 15, wordSpacing: 10, fontFamily: 'Athiti'),
              ))),
          Container(
              padding: const EdgeInsets.all(10),
              child: const Center(
                  child: Text(
                ' คณะ วิศวกรรมศาสตร์ สาขา วิศวกรรมคอมพิวเตอร์ \n             มหาวิทยาลัยเทคโนโลยีราชมงคลธัญบุรี ',
                style: TextStyle(
                    fontSize: 15, wordSpacing: 10, fontFamily: 'Athiti'),
              ))),
          Container(child: const Text('')),
          Container(
            child: const Text(''),
          ),
          Column(children: [
            Container(
              child: FloatingActionButton(
                child: const Icon(Icons.arrow_back_ios_new_sharp),
                backgroundColor: const Color.fromARGB(255, 47, 0, 255),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            )
          ]),
        ],
      ),
    );
  }
}
