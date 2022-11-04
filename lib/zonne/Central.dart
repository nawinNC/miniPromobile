import 'package:flutter/material.dart';

class Central extends StatelessWidget {
  const Central({Key? key}) : super(key: key);

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
            'CENTRAL',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        body: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  const Image(
                    image: const AssetImage('assets/images/market.png'),
                    width: 350,
                    height: 270,
                  ),
                  const Text(
                    'ตลาดน้ำอัมพวา',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/ampawa');
                    },
                    child: const Text(
                      'ดูเพิ่มเติม',
                      style: TextStyle(
                          fontSize: 16, decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  const Image(
                    image: AssetImage('assets/images/7waterfall.png'),
                    width: 350,
                    height: 270,
                  ),
                  const Text(
                    'น้ำตกเจ็ดสาวน้อย',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/7Waterfall');
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
                    image: AssetImage('assets/images/watprakaew.png'),
                    width: 350,
                    height: 270,
                  ),
                  const Text(
                    'วัดพระศรีรัตนศาสดาราม (วัดพระแก้ว)',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/watprakaew');
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
                    image: AssetImage('assets/images/suansiam.png'),
                    width: 350,
                    height: 270,
                  ),
                  const Text(
                    'สยามอะเมซิ่งพาร์ค(สวนสยาม)',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/suansiam');
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
                    image: AssetImage('assets/images/nzmtoksarikagrang.jpg'),
                    width: 350,
                    height: 270,
                  ),
                  const Text(
                    'น้ำตกสาริกา',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/NamToksarika');
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
        ));
  }
}

class Ampawa extends StatelessWidget {
  const Ampawa({super.key});

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
          'ตลาดน้ำอัมพวา',
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
                  image: AssetImage('assets/images/market.png'),
                  width: 350,
                  height: 270,
                ),
                Text(
                  'ตลาดน้ำอัมพวา',
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
                    '        ในช่วงเวลาเย็นตั้งแต่ช่วงเวลา 12.00-20.00 น. ในคลองอัมพวาจะมีพ่อค้าแม่ค้าพายเรือขายอาหารและเครื่องดื่มเช่น หอยทอด ก๋วยเตี๋ยว กาแฟ โอเลี้ยง ขนมหวานต่าง ๆถ้าพูดถึงตลาดน้ำ (Thailand Floating Market) ที่เก่าแก่และโด่งดังมาอย่างยาวนานของเมืองไทย คงต้องนึกถึงตลาดน้ำอัมพวา (Amphawa Floating Market) เป็นอันดับต้น ๆ ตลาดริมคลองแห่งนี้จัดเป็นแหล่งท่องเที่ยวซึ่งมีชื่อเสียงมากที่สุดของจังหวัดสมุทรสงคราม และเป็นตลาดน้ำ (floating market near Bangkok) ที่อยู่ไม่ไกลจากกรุงเทพฯ มากนัก ทุกวันศุกร์ เสาร์และอาทิตย์ ที่นี่จึงคลาคล่ำไปด้วยนักท่องเที่ยวที่มาเดินเล่นรับลมเย็นริมน้ำ บ้างก็เลือกซื้อหาของกินอร่อย ๆ จากร้านต่าง ๆ ที่เปิดขายเรียงรายอยู่ทั้งสองฝั่งคลอง อาหารหรือขนมบางอย่างเป็นสูตรโบราณที่ไม่ค่อยมีให้เห็นแล้ว บางร้านก็มีอาหารหรือขนมแบบใหม่ ๆ แปลก ๆ ไว้ให้นักท่องเที่ยวได้ลองชิมหรือซื้อไปฝากญาติฝากเพื่อน'),
                Text(''),
                Text(
                  'เวลาเปิดทำการ',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text('ทุกวันศุกร์ เสาร์ อาทิตย์ เวลา 9.00-22.00 น.'),
                Text('*หยุดวันหยุดนักขัตฤกษ์*'),
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
                    '        ให้ใช้ถนนพระราม 2 (สายธนบุรี-ปากท่อ) ทางหลวงหมายเลข 35 ถึง กม.ที่ 63 เข้าตัวเมืองสมุทรสงคราม ผ่านตัวเมือง จากนั้นเข้าทางหลวง 325 สมุทรสงคราม-บางแพ กม.ที่ 36-37 มาทางแยกซ้ายเข้าไปทางที่จะไปอุทยานฯ ร.2 ตลาดน้ำจะอยู่ใกล้กับอุทยานฯ ร.2'),
                Text(''),
                Text(
                  'โดยรถประจำทาง',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                Text(
                    '        นั่งรถโดยสารประจำทางสายกรุงเทพฯ-ดำเนินสะดวก มาลงที่ตลาดอัมพวาได้เลย'),
              ],
            ),
          ),Padding(
            padding: const EdgeInsets.only(left: 300,top:0 ,bottom: 10),
            child: Container(child:
              FloatingActionButton(child: Icon(Icons.location_on_sharp),backgroundColor: Color.fromARGB(255, 47, 0, 255) ,onPressed: (){
                Navigator.pushNamed(context, '/myMapsampawa');}),),
          )
        ],
      ),
    );
  }
}

class SevenWaterfall extends StatelessWidget {
  const SevenWaterfall({super.key});

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
          'น้ำตกเจ็ดสาวน้อย',
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
                  image: AssetImage('assets/images/7waterfall.png'),
                  width: 350,
                  height: 270,
                ),
                Text(
                  'น้ำตกเจ็ดสาวน้อย',
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
                    '        น้ำตกเจ็ดสาวน้อย" เป็นน้ำตกชั้นเตี้ย ๆ จำนวน 7 ชั้น แต่ละชั้นมีความสูง 2-5 เมตร สายน้ำไหลลดหลั่นเป็นธารน้ำตกกว้างคล้ายแก่งขนาดใหญ่ มีอ่างน้ำตื้น ๆ หลายแห่งที่ลงเล่นน้ำได้ น้ำตกชั้นที่สวยงามที่สุดคือ ชั้นที่ 4 และจะสวยมาก ๆ ในช่วงเดือนพฤศจิกายน-เดือนเมษายน เพราะน้ำใสสะอาด ไม่ไหลเชี่ยว จึงลงเล่นได้อย่างปลอดภัย น้ำตกเจ็ดสาวน้อย มีต้นกำเนิดมาจาก ลำห้วยมวกเหล็ก ซึ่งเป็นลำห้วยที่มีน้ำไหลตลอดทั้งปี สายน้ำของลำห้วยมวกเหล็กที่ไหลผ่านในพื้นที่มีระยะทางประมาณ 15 กิโลเมตร'),
                Text(''),
                Text(
                  'เวลาเปิดทำการ',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text('เปิดให้เข้าชมทุกตั้งแต่เวลา 08.30-16.30 น.'),
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
                    '        จาก อ.เมืองสระบุรี เลี้ยงขวาเข้าถนนมิตรภาพ ขับตรงไปอีก 50 กม. เมื่อเจอการไฟฟ้า อ.มวกเหล็ก  ให้เลี้ยวซ้านเข้าถนน 2224 และขับตรงไปอีก 12 กิโลเมตร ก็จะเจอทางเข้าน้ำตกเจ็ดสาวน้อย'),
                Text(''),
                Text(
                  'โดยรถประจำทาง',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                Text(
                    '        จากขนส่งสระบุรี นั่งรถสองแถว สระบุรี-แก่งคอย-มวกเหล็ก 30 บาท ไปลงอุทยานแห่งชาติน้ำตกเจ็ดสาวน้อย และเดินต่อเข้าไปยังน้ำตก'),
                Text(
                  'โดยรถไฟ',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                Text(
                    '        นั่งรถไฟปลงสาถานีชุมทางแก่งคอย ไปลงชุมทางแก่งคอย แล้วเดินไปที่ศาลาหน้าวัดแก่งคอย เพื่อต่อรถสองแถว สระบุรี-แก่งคอย-มวกเหล็ก ราคา30 บาท ระยะทาง 50 กม. ใช้เวลาเดินทางประมาณ 1 ชม. ไปลงอุทยานแห่งชาติน้ำตกเจ็ดสาวน้อย และเดินต่อเข้าไปยังน้ำตก'),
                Text(
                  'ค่าเข้าชม',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text(
                    '         คนไทย : ผู้ใหญ่ 20 บาท/คน - เด็ก 10 บาท/คน , ชาวต่างชาติ : ผู้ใหญ่ 100 บาท/คน - เด็ก 50 บาท/คนยกเว้นค่าบริการ สำหรับ บุคคลพิการ ผู้สูงอายุมากกว่า 60 ปีขึ้นไป และเด็กอายุตํ่ากว่า 3 ปี'),
              ],
            ),
          ),Padding(
            padding: const EdgeInsets.only(left: 300,top:0 ,bottom: 10),
            child: Container(child:
              FloatingActionButton(child: Icon(Icons.location_on_sharp),backgroundColor: Color.fromARGB(255, 47, 0, 255) ,onPressed: (){
                Navigator.pushNamed(context, '/myMapssevenwate');}),),
          )
        ],
      ),
    );
  }
}

class Watprakaew extends StatelessWidget {
  const Watprakaew({super.key});

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
          'วัดพระศรีรัตนศาสดาราม',
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
                  image: AssetImage('assets/images/watprakaew.png'),
                  width: 350,
                  height: 270,
                ),
                Text(
                  'วัดพระศรีรัตนศาสดาราม (วัดพระแก้ว)',
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
                    '        วัดพระศรีรัตนศาสดาราม หรือวัดพระแก้ว พระบาทสมเด็จพระพุทธยอดฟ้าจุฬาโลก รัชกาลที่ 1 โปรดเกล้าฯ ให้สร้างขึ้นตามแบบวัดพระศรีสรรเพชญ สมัยอยุธยาพร้อมกับการสถาปนากรุงรัตนโกสินทร์ เมื่อ พ.ศ. 2325 แล้วเสร็จในปี พ.ศ. 2327 วัดนี้อยู่ในเขตพระราชฐานชั้นนอกทางทิศตะวันออก เป็นที่ประดิษฐานพระพุทธมหามณีรัตนปฏิมากรหรือพระแก้วมรกต พระพุทธรูปปางสมาธิ ทำด้วยมณีสีเขียวเนื้อเดียวทั้งองค์ หน้าตักกว้าง 48.3 ซม. สูงตั้งแต่ฐานถึงยอดพระเศียร 66 ซม. บนบุษบกทองคำ ภายในพระอุโบสถของวัด และระเบียงรอบวัดมีภาพจิตรกรรมฝาผนังสวยงามมากเรื่องรามเกียรติ์ สิ่งที่น่าสนใจอื่น ๆ ภายในวัด'),
                Text(''),
                Text(
                  'เวลาเปิดทำการ',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text('ทุกวันตั้งแต่เวลา 8.30-16.30 น.'),
                Text('*หยุดวันหยุดนักขัตฤกษ์*'),
                Text(''),
                Text(
                  'ข้อมูลการเดินทาง',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text(
                  'โดยรถประจำทาง',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                Text(
                    '        รถเมล์ สาย 1 2 9 15 25 30 32 33 43 44 47 53 64 70 80 82 91 123 124 201 203 501 503 512'),
                Text(
                  'โดยรถไฟฟ้า',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                Text(
                    '        ลงที่ BTS สถานีสะพานตากสิน ทางออก 2  เดินไปทางแม่น้ำเจ้าพระยา ใต้สะพานมีท่าเรือสาทร ลงเรือด่วนเจ้าพระยา ธงสีส้ม'),
                Text(
                  'โดยเรือ',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                Text(
                    '        ลง BTS สถานีสะพานตากสิน ทางออก 2 เดินไปทางแม่น้ำเจ้าพระยา ใต้สะพานมีท่าเรือสาทร ลงเรือด่วนเจ้าพระยา ธงสีส้ม ขึ้นเรือที่ท่าช้าง (N9) เดินออกจากท่าเรือ วัดพระแก้วอยู่ทางขวามือ'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Suansiam extends StatelessWidget {
  const Suansiam({super.key});

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
          'สยามอะเมซิ่งพาร์ค(สวนสยาม)',
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
                  image: AssetImage('assets/images/suansiam.png'),
                  width: 350,
                  height: 270,
                ),
                Text(
                  'สยามอะเมซิ่งพาร์ค(สวนสยาม)',
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
                    '        เป็นสวนพักผ่อนใจที่ใหญ่ที่สุดในประเทศไทย ด้วยเนือที่กว่า 300 ไร่ ประกอบด้วยสวนน้ำระดับเวิร์ลคลาส ทั้งทะเลน้ำจีด ธารน้ำวน สไลเดอร์ยักษ์ สวนสนุกที่ประกอบด้วยเครื่องเล่นระดับโลกมากมายกว่า 30 ชนิด สวนสยามแรกเริ่มเปิดตัวเป็นที่รู้จักในรูปแบบของสวนน้ำซึ่งมีทะเลเทียมเป็นจุดเด่น ต่อมาได้นำเครื่องเล่นมากมายมาเปิดให้บริการเพิ่มขึ้น จึงกลายเป็นสวนน้ำ-สวนสนุกที่พร้อมจะมอบความสุขให้กับผู้คนทุกวัย สวนสยาม ได้นำเข้าและติดตั้งเครื่องเล่นระดับโลก ทำให้สวนสยาม ทะเล-กรุงเทพฯ กลายเป็นสวนพักผ่อนหย่อนใจ สวนน้ำ สวนสนุกที่สมบูรณ์แบบที่สุดในภูมิภาคเอเชียตะวันออกเฉียงใต้ ด้วยเครื่องเล่นชั้นนำจำนวนกว่า 30 รายการ และทะเลเทียมที่ใหญ่ที่สุดในโลก'),
                Text(''),
                Text(
                  'เวลาเปิดทำการ',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text('ทุกวันตั้งแต่เวลา 10.00-18.00 น.'),
                Text('*หยุดวันหยุดนักขัตฤกษ์*'),
                Text(''),
                Text(
                  'ค่าเข้าชม',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text('ผู้ใหญ่ 900 บาทม,เด็ก 150 บาท'),
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
                    '        เดินทางสะดวกด้วยรถยนต์ส่วนบุคคลและรถแท็กซี่ เข้าได้สองเส้นทาง ถนนเสรีไทย 75 (7 กม. จากแยกบางกะปิ) และถนนรามอินทราตรงข้ามโรงพยาบาลนพรัตน์(รามอินทรา กม.12)'),
                Text(
                  'โดยรถประจำทาง',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                Text(
                    '        รถเมล์ สาย 36ก,60,71,73ก,96,115,168,ปอ.168, ปอ.519'),
                Text(
                  'โดยรถตู้โดยสาร',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                Text(
                    '        มีนบุรี - อนุเสาวรีย์, มีนบุรี - ปากเกร็ด, มีนบุรี - อนุเสาวรีย์ทางด่วน 3 ด่วน ลงแฟชั่นไอส์เเลนด์ต่อรถเมล์สาย 36ก,60,71,73ก,96,115,168 เพื่อเข้าสวนสยาม'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NamToksarika extends StatelessWidget {
  const NamToksarika({super.key});

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
          'น้ำตกสาริกา',
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
                  image: AssetImage('assets/images/nzmtoksarikagrang.jpg'),
                  width: 350,
                  height: 270,
                ),
                Text(
                  'น้ำตกสาริกา',
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
                    '         น้ำตกสาริกา เป็นน้ำตกที่ตั้งอยู่ในเขต อุทยานแห่งชาติเขาใหญ่ ตำบลสาริกา จังหวัดนครนายก โดยน้ำตกของที่นี่นั้น จะมีขนาดใหญ่ไหลตกจากหน้าผาสูง รวมทั้งหมด 9 ชั้นด้วยกัน ซึ่งผาที่สูงที่สุดนั้น จะสูงกว่า 200 เมตรเลย ในแต่ละชั้นก็จะมีหินธรรมชาติ และมีแอ่งน้ำขนาดเล็กๆ อยู่ทั่วบริเวณ'),
                Text(''),
                Text(
                  'เวลาเปิดทำการ',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text('ทุกวัน'),
                Text(''),
                Text(
                  'ค่าเข้าชม',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text('ฟรี'),
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
                    '         ถ้ามาจากรุงเทพฯ สามารถใช้ถนนทางหลวงหมายเลข 1 ( พหลโยธิน ) ตรงมาทางจังหวัดสระบุรี จากนั้นให้เข้าเลนซ้ายเพื่อไปนครนายก แล้วให้เข้าสู่ถนนหมายเลข 33 เพื่อมุ่งหน้าไปจังหวัดนครนายกอีกทีค่ะ พอลงจากสะพานแล้วก็ให้ขับไปจนถึงตัวเมืองนครนายก จะสังเกตเห็นป้ายบอกทางไป น้ำตกสาริกา น้ำตกนางรอง ก็ให้ขับไปตามถนนหมายเลข 3049 เลย ขับไปประมาณ 14 กิโลเมตร ก็จะถึง น้ำตกสาริกา'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 300,top:0 ,bottom: 10),
            child: Container(child:
              FloatingActionButton(child: Icon(Icons.location_on_sharp),backgroundColor: Color.fromARGB(255, 47, 0, 255) ,onPressed: (){
                Navigator.pushNamed(context, '/myMapsSarika');}),),
          )
        ],
      ),
    );
  }
}
