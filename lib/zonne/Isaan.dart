import 'package:flutter/material.dart';

class Isaan extends StatelessWidget {
  const Isaan({Key? key}) : super(key: key);

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
          'ISAAN',
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'Hey',
          ),
        ),
      ),
      body: ListView(children: [
        Container(
          child: Column(
            children: [
              const Image(
                image: const AssetImage('assets/images/sampanbrok.jpeg'),
                width: 350,
                height: 270,
              ),
              const Text(
                'แก่งสามพันโบก',
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/sampanbrok');
                  },
                  child: const Text(
                    'ดูเพิ่มเติม',
                    style: const TextStyle(
                        fontSize: 16, decoration: TextDecoration.underline),
                  )),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              const Image(
                image: const AssetImage('assets/images/ganghan.jpeg'),
                width: 350,
                height: 270,
              ),
              const Text(
                'ทุ่งกังหันลมห้วยบง',
                style: const TextStyle(fontSize: 20),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/ganghanrom');
                  },
                  child: const Text(
                    'ดูเพิ่มเติม',
                    style: const TextStyle(
                        fontSize: 16, decoration: TextDecoration.underline),
                  )),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              const Image(
                image: AssetImage('assets/images/khunrumpaw.jpeg'),
                width: 350,
                height: 270,
              ),
              const Text(
                'เขื่อนลำปาว',
                style: TextStyle(fontSize: 20),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/khunrumpaw');
                  },
                  child: const Text(
                    'ดูเพิ่มเติม',
                    style: const TextStyle(
                        fontSize: 16, decoration: TextDecoration.underline),
                  )),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              const Image(
                image: const AssetImage('assets/images/doypatang.jpg'),
                width: 350,
                height: 270,
              ),
              const Text(
                'ภูกระดึง',
                style: const TextStyle(fontSize: 20),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/PhuKraDueng');
                  },
                  child: const Text(
                    'ดูเพิ่มเติม',
                    style: const TextStyle(
                        fontSize: 16, decoration: TextDecoration.underline),
                  )),
            ],
          ),
        ),
      ]),
    );
  }
}

class SamPanBrok extends StatelessWidget {
  const SamPanBrok({super.key});

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
          'แก่งสามพันโบก',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                const Image(
                  image: const AssetImage('assets/images/sampanbrok.jpeg'),
                  width: 350,
                  height: 270,
                ),
                const Text(
                  'แก่งสามพันโบก',
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                const Text(
                  'ข้อมูลทั่วไป',
                  style: const TextStyle(
                    color: Colors.red,
                  ),
                ),
                const Text(
                    '        แก่งสามพันโบก ตั้งอยู่บริเวณบ้านสองคอน เป็นแก่งหินที่อยู่ใต้ลำน้ำโขงซึ่งเกิดจากแรงน้ำที่กัดเซาะใน ช่วงฤดูน้ำหลากกลายเป็นแอ่งจำนวนมาก ลักษณะคล้ายหาดชมดาวที่อำเภอนาตาล คำว่า “โบก” หมายถึง “แอ่ง” หรือ “บ่อน้ำลึก” สามพันโบกจะปรากฏให้เห็นในช่วงฤดูแล้งยามที่แม่น้ำโขงลดระดับลง ตั้งแต่เดือนธันวาคม-พฤษภาคม ชาวบ้านเรียกว่า “แกรนด์แคนยอนน้ำโขง” ทางเข้าแก่งสามพันโบกจะพบก้อนหินลักษณะคล้ายหัวสุนัข'),
                const Text(''),
                const Text(
                  'เวลาเปิดทำการ',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                const Text('เปิด 24 ชั่วโมง'),
                const Text(''),
                const Text(
                  'ข้อมูลการเดินทาง',
                  style: const TextStyle(
                    color: Colors.red,
                  ),
                ),
                const Text(
                  'โดยรถยนต์ส่วนตัว',
                  style: const TextStyle(decoration: TextDecoration.underline),
                ),
                const Text(
                    '        จากจังหวัดอุบลราชธานี ระยะทาง 120 เมตร วิ่งตามทางหลวงหมายเลข 2050 ผ่านอำเภอตระการพืชผล ไปยัง อำเภอโพธิ์ไทร ด้วยระยะทางประมาณ 110 กิโลเมตรและเดินทางต่อไปยังบ้านสองคอนเข้าไปหมู่บ้านประมาณ 3 กิโลเมตร'),
                const Text(''),
                const Text(
                  'โดยรถโดยสารประจำทาง',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                const Text(
                    '        มีรถทัวร์ปรับอากาศของบริษัท เชิดชัยทัวร์จากกรุงเทพฯ - สองคอน ลงที่สองคอนหลังจากนั้นก็โทรแจ้งให้รีสอร์ท ขับรถมารับ (เสียค่าใช้จ่ายแล้วแต่ตกลง) หรือ อาจจะอาศัยโบกรถของชาวบ้านมาลงแถวนั้น'),
              
              ],
              
            ),
          ),Padding(
            padding: const EdgeInsets.only(left: 300,top:0 ,bottom: 10),
            child: Container(child:
              FloatingActionButton(child: Icon(Icons.location_on_sharp),backgroundColor: Color.fromARGB(255, 47, 0, 255) ,onPressed: (){
                Navigator.pushNamed(context, '/myMapssampb');}),),
          )
        ],
      ),
    );
  }
}

class GangHanRom extends StatelessWidget {
  const GangHanRom({super.key});

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
          'ทุ่งกังหันลมห้วยบง',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                const Image(
                  image: const AssetImage('assets/images/ganghan.jpeg'),
                  width: 350,
                  height: 270,
                ),
                const Text(
                  'ทุ่งกังหันลมห้วยบง',
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                const Text(
                  'ข้อมูลทั่วไป',
                  style: const TextStyle(
                    color: Colors.red,
                  ),
                ),
                const Text(
                    '        ทุ่งกังหันลมแห่งนี้ตั้งอยู่บนพื้นที่กว่า 10,000 ไร่ ถูกล้อมรอบไปด้วยไร่ข้าวโพด ไร่มันสำปะหลัง และไร่อ้อยของชาวบ้าน จากที่ตั้งของทุ่งกังหันลม สามารถมองเห็นวิวทิวทัศน์ที่สวยงาม และกังหันลมที่นำมาติดตั้งนั้นมีจำนวนมาก และด้วยความสูงของกังหันแต่ละต้นและใบพัดที่ใหญ่โต ทำให้รู้สึกตื่นเต้นมากเมื่อไปยืนอยู่ที่นั่น มีกังหันลมอยู่รอบ ๆ ยิ่งตอนตะวันใกล้จะตกดินเงาของกังหันลมที่เรียงรายกับวิวและสีแสดของท้องฟ้า มันชั่งน่าตื่นตาตื่นใจและอิ่มใจไปพร้อม ๆ กัน เหมาะที่จะถ่ายรูปทำให้ผู้คนชอบมาที่ทุ่งกังหันลมนี้เพื่อเก็บรูปและบรรยากาศที่สวยงามนี้นั่นเอง ปัจจุบันทุ่งกังหันลมห้วยบงได้กลายเป็นสถานที่ท่องเที่ยวที่สำคัญ และมีนักท่องเที่ยวเดินทางมาแวะชมถ่ายภาพคู่กับกังหันลมเป็นจำนวนมาก มาถึงโคราชทั้งที่ต้องไปเที่ยวที่นี่ซักครั้งรับรองว่าต้องประทับใจแน่นอน'),
                const Text(''),
                const Text(
                  'เวลาเปิดทำการ',
                  style: const TextStyle(
                    color: Colors.red,
                  ),
                ),
                const Text('เปิดให้เข้าชมทุกตั้งแต่เวลา 6.00-21.00 น.'),
                const Text(''),
                const Text(
                  'ข้อมูลการเดินทาง',
                  style: const TextStyle(
                    color: Colors.red,
                  ),
                ),
                const Text(
                  'โดยรถยนต์',
                  style: const TextStyle(decoration: TextDecoration.underline),
                ),
                const Text(
                    '        จากกทม โดยใช้ถนนหลวงหมายเลข 1 (พหลโยธิน) ถึงสระบุรี เลี้ยวขวา เข้าสู่ถนนหลวงหมายเลข 2 (มิตรภาพ) ขับรถมุ่งหน้า อ.หมวกเหล็ก เลี้ยวซ้ายเข้าสู่ถนนหลวงหมายเลข 2224 เมื่อถึง อ.ลำพญากลาง เลี้ยวซ้ายอีกครั้ง เข้าสู่ถนนหลวง 2247      ขับตรงไปเรื่อยๆ พอถึง ต.เขาน้อย เลี้ยวขวาเข้าสู่ถนนหลวงหมายเลข 2256 ขับตรงไปประมาณ 17 กิโลเมตรก็จะเจอกับ "ทุ่งกังหันลมห้วยบง"'),
              ],
            ),
          ),Padding(
            padding: const EdgeInsets.only(left: 300,top:0 ,bottom: 10),
            child: Container(child:
              FloatingActionButton(child: Icon(Icons.location_on_sharp),backgroundColor: Color.fromARGB(255, 47, 0, 255) ,onPressed: (){
                Navigator.pushNamed(context, '/myMapsgangrom');}),),
          )
        ],
      ),
    );
  }
}

class KhunRumPaw extends StatelessWidget {
  const KhunRumPaw({super.key});

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
          'เขื่อนลำปาว',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                const Image(
                  image: AssetImage('assets/images/khunrumpaw.jpeg'),
                  width: 350,
                  height: 270,
                ),
                const Text(
                  'เขื่อนลำปาว',
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                const Text(
                  'ข้อมูลทั่วไป',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                const Text(
                    '        เขื่อนลำปาว อยู่ตำบลลำปาว อำเภอยางตลาด จังหวัดกาฬสินธุ์ อาณาเขตของเขื่อนครอบคลุมพื้นที่ตำบลลำปาว อำเภอเมืองกาฬสินธุ์ ตำบลหนองบัว อำเภอหนองกุงศรี และตำบลเว่อ อำเภอยางตลาด เขื่อนลำปาวเป็นเขื่อนดินสูงจากท้องน้ำ 33 เมตร สันเขื่อนยาว 7.8 เมตร กว้าง 8 เมตร เริ่มก่อสร้างเมื่อปี พ.ศ. 2506 สร้างเสร็จเมื่อปี พ.ศ. 2511 เพื่อปิดกั้นลำน้ำปาวและห้วยยางที่บ้านหนองสองห้อง ตำบลลำปาว อำเภอเมืองกาฬสินธุ์ ทำให้เกิดอ่างเก็บน้ำแฝดทางด้านเหนือเขื่อน จึงได้ขุดร่องเชื่อมระหว่างอ่างเก็บน้ำทั้งสอง เก็บน้ำได้ 1,430 ล้านลูกบาศก์เมตร สามารถช่วยบรรเทาอุทกภัยและใช้ประโยชน์ทางการเกษตร นอกจากนี้ยังเป็นเป็นแหล่งเพาะพันธุ์ปลา และมีหาดดอกเกดเป็นสถานที่พักผ่อนของประชาชน'),
                const Text(''),
                const Text(
                  'เวลาเปิดทำการ',
                  style: const TextStyle(
                    color: Colors.red,
                  ),
                ),
                const Text('ตั้งแต่เวลา 10.00-18.00 น.'),
                const Text('*หยุดวันหยุดนักขัตฤกษ์*'),
                const Text(''),
                const Text(
                  'ข้อมูลการเดินทาง',
                  style: const TextStyle(
                    color: Colors.red,
                  ),
                ),
                const Text(
                  'โดยรถยนต์ส่วนตัว',
                  style: const TextStyle(decoration: TextDecoration.underline),
                ),
                const Text(
                    '        โดยใช้ถนนทางหลวงหมายเลข 213 (กาฬสินธุ์-มหาสารคาม) พอถึงกิโลเมตรที่ 33-34 ก็ให้เลี้ยวขวา เพื่อเข้าสู่ เขื่อนลำปาวค่ะ และให้ขับไปตามถนนอีก 26 กิโลเมตร ก็จะถึงบริเวณของเขื่อน'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NumPong extends StatelessWidget {
  const NumPong({super.key});

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
          'อุทยานแห่งชาติน้ำพอง',
          style: TextStyle(
            fontSize: 30,
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
                  image: AssetImage('assets/images/numpong.jpg'),
                  width: 350,
                  height: 270,
                ),
                Text(
                  'อุทยานแห่งชาติน้ำพอง',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  'ข้อมูลทั่วไป',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text(
                    '        อุทยานแห่งชาตินำ้พอง ครอบคลุมพื้นที่หลายอำเภอในจังหวัดขอนแก่น ได้แก่ อุบลรัตน์ ภูเวียง บ้านฝาง มัญจาคีรี และโคกโพธิ์ชัย และสองอำเภอในจังหวัดชัยภูมิ ได้แก่ บ้านแท่น และ แก่งคร้อ ที่ทำการอุทยานตั้งอยู่บริเวณอ่างเก็บน้ำอุบลรัตน์ เป็นทั้งแหล่งต้นน้ำของลำน้ำชี ลำน้ำพอง และแหล่งสมุนไพร พื้นที่ส่วนใหญ่เป็นภูเขา ป่าเต็งรัง ป่าดิบแล้ง มีเนื้อที่ประมาณ 197 ตารางกิโลเมตร หรือ 123,125 ไร่ สภาพพื้นที่โดยทั่วไป มีลักษณะสัณฐานเป็นเทือกเขาหินทรายสูงจากระดับน้ำทะเลปานกลางคล้ายกับเทือกเขาทั่ว ๆ ไปของภาคตะวันออกเฉียงเหนือ'),
                Text(''),
                Text(
                  'เวลาเปิดทำการ',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text('ตั้งแต่เวลา 9.00-20.00 น.'),
                Text('*หยุดวันหยุดนักขัตฤกษ์*'),
                Text(''),
                Text(
                  'ข้อมูลการเดินทาง',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text(
                  'โดยรถยนต์ส่วนตัว',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                Text(
                    '        จากตัวเมืองขอนแก่นตามทางหลวงหมายเลข 12 ( ไปอำเภอชุมแพ ) ถึงหลักกิโลเมตรที่ 30 จะมี แยกขวา เข้าบ้านผือ เดินทางต่อไปอีกประมาณ 19 กิโลเมตร ก็จะถึงที่ทำการอุทยานฯ ซึ่งตั้งอยู่บนเชิงเขาด้านขวามือ รวมระยะทางประมาณ 49 กิโลเมตร'),
                Text(''),
                Text(
                  'ค่าเข้าชม',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text('   ผู้ใหญ่ 200 บาท,เด็ก 10 บาท'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PhuKraDueng extends StatelessWidget {
  const PhuKraDueng({super.key});

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
          'ภูกระดึง',
          style: TextStyle(
            fontSize: 30,
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
                  image: AssetImage('assets/images/doypatang.jpg'),
                  width: 350,
                  height: 270,
                ),
                Text(
                  'ภูกระดึง',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  'ข้อมูลทั่วไป',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text(
                    '        สภาพทั่วไปของภูกระดึงประกอบไปด้วยพรรณไม้นานาพรรณ สัตว์ป่านานาชนิด หน้าผา ทุ่งหญ้า ลำธาร และน้ำตก อีกทั้งยังเป็นพื้นที่ต้นน้ำของลำน้ำพอง ซึ่งเป็นลำน้ำสายสำคัญสายหนึ่งของภาคตะวันออกเฉียงเหนือ ด้วยความสูง บรรยากาศ และสภาพอากาศที่เย็นสบายตลอดปีบนยอดภูกระดึง โดยเฉพาะในช่วงฤดูหนาวอุณหภูมิอาจลดต่ำจนถึง 0 องศาเซลเซียส จึงเป็นแรงจูงใจให้นักท่องเที่ยวปรารถนาและหวังจะเป็นผู้พิชิตยอดภูกระดึงสักครั้งหนึ่งในชีวิต'),
                Text(''),
                Text(
                  'เวลาเปิดทำการ',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text('- วันจันทร์-พฤหัสบดี ตั้งแต่เวลา 06.00-13.00 น.'),
                Text('- วันศุกร์-อาทิตย์ ตั้งแต่เวลา 05.30-13.00 น. '),
                Text('หลังจากเวลา 13.00 น. ไม่อนุญาตให้ผ่านขึ้นเขาทุกกรณี '),
                Text(''),
                Text(
                  'ข้อมูลการเดินทาง',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text(
                  'โดยรถยนต์ส่วนตัว',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                Text(
                    """        1. เดินทางผ่านจังหวัดสระบุรี เพชรบูรณ์ อำเภอหล่มสัก หล่มเก่า ด่านซ้าย ภูเรือ และอำเภอเมืองเลย เลี้ยวเข้าทางหลวงแผ่นดินหมายเลข 201 (เลย-ขอนแก่น) และเลี้ยวเข้าทางหลวงจังหวัดหมายเลข 2019 เข้าสู่อุทยานแห่งชาติภูกระดึง

          2. ใช้เส้นทางผ่านจังหวัดสระบุรี นครราชสีมา จนถึงจังหวัดขอนแก่น เลี้ยวซ้ายเข้าทางหลวงแผ่นดินหมายเลข 201 ผ่านอำเภอภูผาม่านและตำบลผานกเค้า เข้าสู่อุทยานแห่งชาติภูกระดึง

          3. เดินทางผ่านจังหวัดสระบุรี อำเภอปากช่อง เลี้ยวซ้ายเข้าทางหลวงแผ่นดิน หมายเลข 201 ผ่านจังหวัดชัยภูมิ อำเภอภูเขียว แล้วเลี้ยวซ้ายเข้าทางหลวงแผ่นดินหมายเลข 12 ผ่านอำเภอชุมแพ จากนั้นเดินทางเช่นเดียวกับเส้นทางที่ 2"""),
                Text(''),
                Text(
                  'ค่าเข้าชม',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text('   ฟรี'),
              ],
            ),
          ),Padding(
            padding: const EdgeInsets.only(left: 300,top:0 ,bottom: 10),
            child: Container(child:
              FloatingActionButton(child: Icon(Icons.location_on_sharp),backgroundColor: Color.fromARGB(255, 47, 0, 255) ,onPressed: (){
                Navigator.pushNamed(context, '/myMapsPhuKraDeung');}),),
          )
        ],
      ),
    );
  }
}
