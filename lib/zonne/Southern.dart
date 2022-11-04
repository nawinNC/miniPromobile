import 'package:flutter/material.dart';

class Southern extends StatelessWidget {
  const Southern({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: const Color.fromARGB(255, 105, 110, 255),
        shadowColor: Colors.transparent,
        elevation: 5,
        centerTitle: true,
        title: const Text(
          'SOUTHERN',
          style: TextStyle(fontSize: 30, fontFamily: 'Hey'),
        ),
      ),
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                const Image(
                  image: AssetImage('assets/images/samui.png'),
                  width: 350,
                  height: 270,
                ),
                const Text(
                  'เกาะสมุย',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Athiti',
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/samui');
                    },
                    child: const Text(
                      'ดูเพิ่มเติม',
                      style: TextStyle(
                          fontSize: 16, decoration: TextDecoration.underline),
                    )),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                const Image(
                  image: const AssetImage('assets/images/matra.png'),
                  width: 350,
                  height: 270,
                ),
                const Text(
                  'เกาะมัตรา',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Athiti',
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/matra');
                    },
                    child: const Text(
                      'ดูเพิ่มเติม',
                      style: TextStyle(
                          fontSize: 16, decoration: TextDecoration.underline),
                    )),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                const Image(
                  image: AssetImage('assets/images/kohtao.png'),
                  width: 350,
                  height: 300,
                ),
                const Text(
                  'เกาะเต่า',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Athiti',
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/kohtao');
                    },
                    child: const Text(
                      'ดูเพิ่มเติม',
                      style: TextStyle(
                          fontSize: 16, decoration: TextDecoration.underline),
                    )),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                const Image(
                  image: AssetImage('assets/images/uthayan.png'),
                  width: 350,
                  height: 300,
                ),
                const Text(
                  'อุทยานแห่งชาติหมู่เกาะอ่างทอง',
                  style: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'Athiti',
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/uthayan');
                    },
                    child: const Text(
                      'ดูเพิ่มเติม',
                      style: TextStyle(
                          fontSize: 16, decoration: TextDecoration.underline),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Samui extends StatelessWidget {
  const Samui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: const Color.fromARGB(255, 105, 110, 255),
        shadowColor: Colors.transparent,
        elevation: 5,
        centerTitle: true,
        title: const Text(
          'เกาะสมุย',
          style: TextStyle(
            fontSize: 22,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: const [
                Image(
                  image: AssetImage('assets/images/samui.png'),
                  width: 350,
                  height: 270,
                ),
                Text(
                  'เกาะสมุย',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
                Text(
                  'ข้อมูลทั่วไป',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text(
                    '        เกาะสมุย เป็นเกาะที่มีชื่อเสียงอย่างมากตั้งอยู่บริเวณอ่าวไทย ห่างจากจังหวัดสุราษฎร์ธานีไปทางทิศตะวันออก 84 กิโลเมตร มีเนื้อที่ประมาณ247 ตารางกิโลเมตร ถนนรอบเกาะ (ถนนสายทวีราษฎร์ภักดี) มีความยาว 52 กิโลเมตร พื้นที่ 1 ใน 3 ของเกาะเป็นที่ราบ ล้อมรอบภูเขา ในช่วงเดือนมกราคมถึงเดือนพฤษภาคม เป็นช่วงคลื่นลมสงบและเหมาะแก่การท่องเที่ยวอย่างมาก เกาะสมุย เป็นเกาะที่มีหาดทรายสวยงาม และมีสีขาวนวลหลายแห่ง อาทิ หาดเฉวง หาดนาเทียน หาดตลิ่งงาม หาดละไม '),
                Text(''),
                Text(
                  'เวลาเปิดทำการ',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text('เปิด 24 ชั่วโมง'),
                Text(''),
                Text(
                  'ข้อมูลการเดินทาง',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text(
                  'โดยรถยนต์',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                Text(
                    '        ใช้เส้นทางหลวงหมายเลข 35 (สายธนบุรี-ปากท่อ)แล้วใช้ทางหลวงสายใต้หมายเลข 4 เข้าสู่ทางหลวงหมายเลข 41 ถึงสุราษฎร์ธานี ระยะทางประมาณ 644 กิโลเมตร จากนั้นเดินทางต่อไปยังอำเภอดอนสัก เมื่อถึงท่าเรือดอนสัก ขับรถลงเรือเฟอร์รี่ข้ามไปเกาะสมุยได้เลย'),
                Text(
                  'โดยเครื่องบิน',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                Text(
                    '        การเดินทางโดยเครื่องบินสามารถเลือกปลายทางได้ 2 สนามบินคือ สนามบินสุราษฎร์ธานีและสนามบินเกาะสมุย   '),
              ],
            ),
          ),Padding(
            padding: const EdgeInsets.only(left: 300,top:0 ,bottom: 10),
            child: Container(child:
              FloatingActionButton(child: Icon(Icons.location_on_sharp),backgroundColor: Color.fromARGB(255, 47, 0, 255) ,onPressed: (){
                Navigator.pushNamed(context, '/myMapskoksamu');}),),
          )
        ],
      ),
    );
  }
}

class Matra extends StatelessWidget {
  const Matra({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: const Color.fromARGB(255, 105, 110, 255),
        shadowColor: Colors.transparent,
        elevation: 5,
        centerTitle: true,
        title: const Text(
          'เกาะมัตรา',
          style: TextStyle(
            fontSize: 22,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: const [
                Image(
                  image: AssetImage('assets/images/matra.png'),
                  width: 350,
                  height: 270,
                ),
                Text(
                  'เกาะเกาะมัตรา',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
                Text(
                  'ข้อมูลทั่วไป',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text(
                    '        เกาะมัตรา หรืออีกชื่อคือ เกาะตังกวย อยู่ห่างจากหาดทรายรีไปทางทิศตะวันออก ประมาณ 7 กิโลเมตร เป็นเกาะที่มีหาดทรายสีขาวสะอาด บริเวณรอบๆ เกาะยังเหมาะสำหรับการดำน้ำดูปะการังน้ำตื้นที่สวยงาม ใกล้กับหาดทรายรีเป็นที่ตั้งของหน่วยพิทักษ์อุทยานฯ มีหาดทรายสลับกับโขดหิน สามารถไปตั้งเต็นท์พักแรม และมีบ้านพักของอุทยานฯบริเวณหัวแหลมของเกาะมีแนวปะการังน้ำตื้น เช่น ปะการังเขากวาง และดอกไม้ทะเลกิจกรรมการท่องเที่ยวของเกาะมาตรา คือ การดำ น้ำชมปะการัง ดูหอยมือเสือและชมปูไก่ ซึ่งชอบปีนต้นไม้และส่งเสียงร้องเหมือนลูกไก่อีกด้วย'),
                Text(''),
                Text(
                  'เวลาเปิดทำการ',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text('ทุกวันตั้งแต่เวลา 7.00-17.00 น.'),
                Text(''),
                Text(
                  'ข้อมูลการเดินทาง',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text(
                  'โดยเครื่องบิน',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                Text(
                    '        สามารถขึ้นเครื่องไปลงที่สนามบินชุมพรและต่อรถตู้ไปยังท่าเรือท่ายางและนั่งเรือไปเกาะมัตราได้เลย'),
              ],
            ),
          ),Padding(
            padding: const EdgeInsets.only(left: 300,top:0 ,bottom: 10),
            child: Container(child:
              FloatingActionButton(child: Icon(Icons.location_on_sharp),backgroundColor: Color.fromARGB(255, 47, 0, 255) ,onPressed: (){
                Navigator.pushNamed(context, '/myMapskokmadta');}),),)
        ],
      ),
    );
  }
}

class KohTao extends StatelessWidget {
  const KohTao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: const Color.fromARGB(255, 105, 110, 255),
        shadowColor: Colors.transparent,
        elevation: 5,
        centerTitle: true,
        title: const Text(
          'เกาะเต่า',
          style: TextStyle(
            fontSize: 22,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: const [
                Image(
                  image: AssetImage('assets/images/kohtao.png'),
                  width: 350,
                  height: 270,
                ),
                Text(
                  'เกาะเต่า',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
                Text(
                  'ข้อมูลทั่วไป',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text(
                    '        เกาะเต่า เป็นเกาะที่ตั้งโดดเดี่ยวในอ่าวไทย อยู่ห่างจากอำเภอเกาะพะงัน 45 กิโลเมตร ทางทิศตะวันตกเฉียงเหนือ ในอดีตกรมราชทัณฑ์ได้ใช้เป็นเรือนจำกักขังนักโทษการเมือง (กบฏบวรเดช) สมัยการปกครองของคณะราษฎร์ เกาะเต่ามีประชาชนมาอาศัยตั้งแต่ปี 2490 เป็นเกาะที่มีธรรมชาติและความสมบูรณ์ของชีวิตใต้ทะเล สวยงามด้วยแนวปะการังทั้งน้ำตื้นและน้ำลึก ปลาหลากชนิดสีสวย ๆ มากมายที่นักดำน้ำจะต้องนึกถึง และชายหาดที่มีหาดทรายขาวสวยสงบน่าพักผ่อนหลายหาด'),
                Text(''),
                Text(
                  'เวลาเปิดทำการ',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text('ทุกวันตั้งแต่เวลา 9.00-19.00 น.'),
                Text(''),
                Text(
                  'ข้อมูลการเดินทาง',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text(
                  'โดยรถไฟ',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                Text(
                    '        นั่งรถไฟขบวนที่ 85 ซึ่งเป็นรอบที่ตรงกับเรือเฟอร์รี่ลมพระยา เรือจะออกจากชุมพร เวลา 07.30 น. ไปเกาะเต่า'),
                Text(
                  'โดยรถโดยสารประจำทาง',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                Text(
                    '        จากกรุงเทพฯ นั่งรถทัวร์ VIP ไปลงที่จังหวัดชุมพรก่อน แล้วขึ้นเรือเฟอร์รี่จากฝั่งเพื่อข้ามไปเกาะเต่า'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class uthayan extends StatelessWidget {
  const uthayan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: const Color.fromARGB(255, 105, 110, 255),
        shadowColor: Colors.transparent,
        elevation: 5,
        centerTitle: true,
        title: const Text(
          'อุทยานแห่งชาติหมู่เกาะอ่างทอง',
          style: TextStyle(
            fontSize: 22,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: const [
                Image(
                  image: AssetImage('assets/images/uthayan.png'),
                  width: 350,
                  height: 270,
                ),
                Text(
                  'อุทยานแห่งชาติหมู่เกาะอ่างทอง',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
                Text(
                  'ข้อมูลทั่วไป',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text(
                    '        ป็นอุทยานแห่งชาติทางทะเลแห่งที่สองของประเทศไทย ประกาศเป็นอุทยานแห่งชาติ เมื่อวันที่ 12 พฤศจิกายน พ.ศ. 2523 อยู่ห่างจากเกาะสมุยไปทางทิศตะวันตกประมาณ 20 กิโลเมตร มีเนื้อที่ประมาณ 63,750 ไร่ เป็นพื้นดินเพียง 50 ตารางกิโลเมตร นอกนั้นเป็นพื้นน้ำ ประกอบด้วยเกาะต่าง ๆ 42 เกาะ ส่วนมากเป็นเกาะหินปูน เกาะที่สำคัญได้แก่ เกาะวัวตาหลับ เกาะพะลวย เกาะวัวจิ๋ว เกาะแม่เกาะ เกาะสามเส้า เกาะไผ่ลวก เกาะคา เกาะหินดับ เกาะวัวกันตัง ฯลฯ'),
                Text(''),
                Text(
                  'เวลาเปิดทำการ',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text('เปิดตลอด 24 ชั่วโมง'),
                Text(''),
                Text(
                  'ข้อมูลการเดินทาง',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text(
                  'โดยรถยนต์',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                Text(
                    '        สำหรับการเดินทางด้วยรถยนต์ส่วนตัว จากกรุงเทพฯ ใช้ทางหลวงหมายเลข 35 (ถนนพระราม 2 หรือถนนธนบุรี-ปากท่อ) ผ่านจังหวัดสมุทรสาคร สมุทรสงคราม อำเภอปากท่อ แล้วแยกซ้ายเข้าทางหลวงหมายเลข 4 (เพชรเกษม) ผ่านจังหวัดเพชรบุรี ประจวบคีรีขันธ์ จนถึงชุมพร แล้วใช้ทางหลวงหมายเลข 41 ผ่านอำเภอหลังสวน อำเภอไชยา จนถึงจังหวัดสุราษฎร์ธานี รวมระยะทางประมาณ 685 กิโลเมตรจากตัวเมืองสุราษฎร์ฯจะต้องขับรถไปยังท่าเรือเฟอร์รี่ อ.ดอนสัก มีให้บริการ อยู่ 2 บริษัท คือ ราชาเฟอร์รี่ และ ซีทรานเฟอร์รี่ อีกประมาณ 65 กิโลเมตร (ใช้เวลาประมาณ 1 ชั่วโมง) แล้วนำรถลงเรือเฟอร์รี่ ใช้เวลาอีก 1.5 ชั่วโมง '),
                Text(
                  'โดยเครื่องบิน',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                Text(
                    '        จากกรุงเทพมหานคร หากนักท่องเที่ยวต้องการเดินทางไปยังเกาะสมุยด้วย เที่ยวบินตรง สามารถใช้บริการเที่ยวบินของสายการบินบางกอกแอร์เวย์ ซึ่งมีเที่ยวบินให้บริการทุกวัน วันละ 17 เที่ยวบินจากสนามบินสุวรรภูมิ ใช้เวลาเดินทางประมาณ 1 ชั่วโมง 5 นาที หรืออีกทางเลือกหนึ่ง นักท่องเที่ยวสามารถใช้บริการสายการบินอื่นๆที่มีเที่ยวบินไปยัง จ.สุราษฏร์ธานี จากนั้นซื้อแพ็คเกจของบริษัทรถตู้หรือเรือเฟอรี่ในราคารวมเที่ยวละ 400 บาทสำหรับค่าตั๋วรถโดยสารไปยังท่าเรือและตั๋วเรือเฟอรี่ไปยังเกาะสมุย'),
                Text(''),
                Text(
                  'ค่าเข้าชม',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text('  ผู้ใหญ่ 40 บาท,เด็ก 20 บาท'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
