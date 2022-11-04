import 'package:flutter/material.dart';

class Northern extends StatelessWidget {
  const Northern({Key? key}) : super(key: key);

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
          'NORTHERN',
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
                image: const AssetImage('assets/images/intanon.jpeg'),
                width: 350,
                height: 270,
              ),
              const Text(
                'อุทยานแห่งชาติดอยอินทนนท์',
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/intanon');
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
                image: const AssetImage('assets/images/pide.jpg'),
                width: 370,
                height: 270,
              ),
              const Text(
                'ปาย',
                style: TextStyle(fontSize: 20),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/pai');
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
                image: AssetImage('assets/images/rongkhun.jpeg'),
                width: 350,
                height: 270,
              ),
              const Text(
                'วัดร่องขุ่น',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/watrongkhun');
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
                image: const AssetImage('assets/images/phushefah.png'),
                width: 350,
                height: 270,
              ),
              const Text(
                'วนอุทยานภูชี้ฟ้า',
                style: TextStyle(fontSize: 20),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/phushefah');
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
                image: AssetImage('assets/images/majam1.jpg'),
                width: 350,
                height: 270,
              ),
              const Text(
                'แม่แจ่ม',
                style: TextStyle(fontSize: 20),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/MaJaM');
                  },
                  child: const Text(
                    'ดูเพิ่มเติม',
                    style: TextStyle(
                        fontSize: 16, decoration: TextDecoration.underline),
                  )),
            ],
          ),
        ),
      ]),
    );
  }
}

class Intanon extends StatelessWidget {
  const Intanon({super.key});

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
          'อุทยานแห่งชาติดอยอินทนนท์',
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
                  image: AssetImage('assets/images/intanon.jpeg'),
                  width: 350,
                  height: 270,
                ),
                Text(
                  'อุทยานแห่งชาติดอยอินทนนท์',
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
                    '        ดอยอินทนนท์ อยู่ในจังหวัดเชียงใหม่ เป็นยอดเขาที่สูงที่สุดของประเทศไทย คือสูงจากระดับน้ำทะเล 2,565 เมตร มีสภาพภูมิประเทศและสภาพป่าที่หลากหลาย ไม่ว่าจะเป็นป่าดงดิบ ป่าสน ป่าเบญจพรรณ ส่วนสภาพภูมิอากาศนั้นมีอากาศหนาวเย็นตลอดทั้งปี โดยเฉพาะในฤดูหนาวจะมีหมอกปกคลุมเกือบทั้งวัน และในตอนเช้าตรู่อาจเกิดปรากฏการณ์น้ำค้างแข็ง ที่สร้างความฮือฮาในหมู่นักท่องเที่ยวเป็นประจำในทุกฤดูหนาว กิจกรรมที่ดอยอินทนนท์ - ไหว้พระมหาธาตุนภเมทนีดลและพระมหาธาตุนภพลภูมิสิริ บริเวณนี้นอกจากจะมีสวนดอกไม้ที่สวยงามแล้ว ยังมีจุดชมวิวที่สามารถมองเห็นทะเลหมอกได้สวยงามอีกจุดหนึ่ง ชมทะเลหมอกในช่วงหน้าหนาว ซึ่งบนดอยอินทนนท์นั้นจะมีจุดชมทะเลหมอกที่นักท่องเที่ยวจะได้สัมผัสกับปรากฏการณ์ทะเลหมอกซึ่งสวยงามอลังการอย่างมาก'),
                Text(''),
                Text(
                  'เวลาเปิดทำการ',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text('ทุกวันตั้งแต่เวลา 8.00-16.30 น.'),
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
                    '        ใช้เส้นทาง เชียงใหม่-ฮอด (ทางหลวงแผ่นดินหมายเลข 108) ไปยังอำเภอจอมทอง 50 กม. ระยะทางประมาณ 50 กม. เลี้ยวขวาตามถนนสาย จอมทอง-ดอยอินทนนท์ (ทางหลวงจังหวัดหมายเลข 1009) ประมาณ 8 กม. ก็จะเริ่มเข้าเขตอุทยานแห่งชาติที่บริเวณน้ำตกแม่กลาง และตัดขึ้นสู่ยอดดอยอินทนนท์เป็นระยะทางทั้งหมด 49.8 กม. ที่ทำการอุทยานแห่งชาติจะตั้งอยู่ที่กิโลเมตรที่ 31)'),
              ],
            ),
          ),Padding(
            padding: const EdgeInsets.only(left: 300,top:0 ,bottom: 10),
            child: Container(child:
              FloatingActionButton(child: Icon(Icons.location_on_sharp),backgroundColor: Color.fromARGB(255, 47, 0, 255) ,onPressed: (){
                Navigator.pushNamed(context, '/myMapsintanon');}),),
          )
        ],
      ),
    );
  }
}

class Pai extends StatelessWidget {
  const Pai({super.key});

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
          'ปาย',
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
                  image: AssetImage('assets/images/pide.jpg'),
                  width: 350,
                  height: 270,
                ),
                Text(
                  'ปาย',
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
                    '        อำเภอเล็ก ๆ แห่งนี้คือสถานที่ท่องเที่ยวยอดฮิตอันดับต้น ๆ ของเมืองไทย และจากอำเภอเงียบสงบท่ามกลางกำแพงขุนเขาสลับซับซ้อนและงดงามด้วยผืนนาที่จะเปลี่ยนสีเป็นเขียวชอุ่มในยามฤดูฝน ปายกลายเป็นจุดหมายปลายทางของนักเดินทางทุกเพศวัย และกลายเป็นเมือง ที่คุณสามารถดีไซน์ความเก๋ไก๋และตอบโจทย์ไลฟ์สไตล์ทันสมัยได้ในทุกวินาทีที่เท้าย่ำไปในดินแดนเล็ก ๆ แห่งนี้ น่าชม ถนนคนเดินปาย ตั้งอยู่บนถนนชัยสงครามเป็นแหล่งจับจ่ายของเหล่านักช็อป สินค้าที่มีขายส่วนใหญ่จะเป็นเสื้อยืดที่ระลึกจากปาย ผ้าพันคอ ของฝาก และของที่ระลึก อีกทั้งยังมีร้านอาหาร และสถานบันเทิงต่าง ๆ มากมายเรียงรายอยู่บนถนนเส้นนี้ จึงทำให้บรรยากาศยามค่ำคืนคึกคักเป็นพิเศษ สะพานประวัติศาสตร์ (ท่าปาย) เป็นสะพานที่น่าสนใจ เนื่องจากในสมัยสงครามโลกครั้งที่ 2 กองทัพญี่ปุ่นเคยใช้เป็นเส้นทางลำเลียงเสบียงและอาวุธเข้าไปยังพม่า ปัจจุบันนักท่องเที่ยวสามารถเดินขึ้นไปถ่ายรูปเป็นที่ระลึก รวมทั้งชมวิวของลำน้ำปายได้ น้ำตกหมอแปง เป็นน้ำตกที่สวยงามและอยู่ห่างจากตัวเมืองเพียงไม่กี่กิโลเมตร'),
                Text(''),
                Text(
                  'เวลาเปิดทำการ',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text('ทุกวันตั้งแต่เวลา 16.00-22.00 น.'),
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
                    '        ใช้ทางหลวงหมายเลข 1 ไปจนถึง อำเภอเถิน จังหวัดลำปาง เลี้ยวซ้ายเข้าทางหลวงหมายเลข 106 จากนั้นเลี้ยวซ้ายเข้าทางหลวงหมายเลข 1103 เส้นทางนี้จะผ่านเข้าสู่อำเภอฮอด แล้วจึงใช้ทางหลวง หมายเลข 108 สู่จังหวัดแม่ฮ่องสอนมีถนนเพียงสายเดียว คือ ทางหลวงหมายเลข 108 ผ่านอำเภอ หางดง สันป่าตอง จอมทอง ฮอด แม่สะเรียง แม่ลาน้อย และขุนยวม มาถึงอำเภอเมืองแม่ฮ่องสอน รวมระยะทางประมาณ 349 กิโลเมตร เส้นทางสายนี้ระยะทางไกลเป็นทางตัดขึ้นเขาสูง แต่มีความสวยงามและคดเคี้ยวนับได้มากถึง 1,864 โค้ง'),
                Text(
                  'โดยรถตู้โดยสาร',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                Text(
                    '        เส้นทาง เชียงใหม่ - ปาย ซื้อตั๋วรถได้ที่ บริษัทเปรมประชาขนส่ง อยู่ที่สถานีขนส่งอาเขต 2 ตรงข้ามกับนครชัยแอร์ ค่าตั๋วคนละ 150 บาท'),
                Text(
                  'โดยรถไฟ',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                Text(
                    '        ทางรถไฟ มีรถด่วนและรถเร็ว การเดินทางไปปาย ออกจากสถานีรถไฟกรุงเทพ (หัวลำโพง)'),
              ],
            ),
          ),Padding(
            padding: const EdgeInsets.only(left: 300,top:0 ,bottom: 10),
            child: Container(child:
              FloatingActionButton(child: Icon(Icons.location_on_sharp),backgroundColor: Color.fromARGB(255, 47, 0, 255) ,onPressed: (){
                Navigator.pushNamed(context, '/myMapspai');}),),
          )
        ],
      ),
    );
  }
}

class WatRongKhun extends StatelessWidget {
  const WatRongKhun({super.key});

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
          'วัดร่องขุ่น',
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
                  image: AssetImage('assets/images/rongkhun.jpeg'),
                  width: 350,
                  height: 270,
                ),
                Text(
                  'วัดร่องขุ่น',
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
                    '        ตั้งอยู่ที่จังหวัดเชียงราย ได้รับการบูรณะโดยอาจารย์เฉลิม ชัยโฆษิตพิพัฒน์ จิตรกรชาวเชียงราย ผู้เป็นศิลปินแห่งชาติสาขาทัศนศิลป์ (จิตรกรรม) จากวัดเล็ก ๆ ซึ่งอยู่ในสภาพค่อนข้างเสื่อมโทรมนี้ได้กลายเป็นศาสนสถานที่สวยงามด้วยสถาปัตยกรรมและงานศิลปะเต็มไปด้วยลวดลายอ่อนช้อยประณีตดึงดูดนักท่องเที่ยวให้มาเยี่ยมชมวัดนี้อย่างคับคั่งตลอดปี อุโบสถของวัดร่องขุ่นมีสีขาวบริสุทธิ์สะอาดซึ่งได้กลายเป็นเอกลักษณ์เป็นที่จดจำของนักท่องเที่ยวชาวต่างชาติซึ่งพากันเรียกวัดร่องขุ่นว่าวัดขาว (Thailand White Temple) ประดับประดาด้วยช่อฟ้าใบระกาอย่างวิจิตรอลังการตามด้วยลวดลายอ่อนช้อยอื่น ๆ อีกมากมายเป็นเชิงชั้นลดหลั่นกันลงมาหน้าบันประดับด้วยพญานาคและติดกระจกระยิบระยับโดยความตั้งใจของผู้สร้างนั้นต้องการสื่อสัญลักษณ์ต่าง ๆ'),
                Text(''),
                Text(
                  'เวลาเปิดทำการ',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text('ทุกวันตั้งแต่เวลา 6.30-18.00 น.'),
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
                    '        ใช้ถนนสายเชียงราย – กรุงเทพฯ ผ่าน จ.พะเยา ผ่าน อ.แม่ใจ จ.พะเยา เข้า อ.พาน จ.เชียงราย ขับรถมุ่งหน้าไปทาง จ.เชียงรายเรื่อยๆ พอออกจากตัว อ.พาน จะข้ามสพานแม่ลาว (แม่น้ำลาว) ขับรถไปซักพักจะถึงแยกปากทางแม่สรวย (แยกไป อ.แม่สรวย และไป จ.เชียงใหม่) ขับรถต่อไปอีกซักประมาณ 10 ก.ม ก่อนจะถึงแยกขุนกรณ์ (ทางไปน้ำตกขุนกรณ์) ประมาณ 200 เมตร ถ้ามองดูทางด้านซ้ายมือ จะเห็นตัววัดสีขาวสะดุดตายิ่งนัก เมื่อถึงทางแยกให้เลี้ยวซ้ายไปทางน้ำตกขุนกรณ์ วัดร่องขุ่นจะอยู่เข้าไปประมาณ 100 เมตร ซึ่งวัดร่องขุ่นจะอยู่ก่อนถึงตัวเมืองเชียงราย13 ก.ม ตรงหลัก ก.ม ที่ 816 ถนนพลหลโยธิน (หมายเลข 1/A2 )'),
              ],
            ),
          ),Padding(
            padding: const EdgeInsets.only(left: 300,top:0 ,bottom: 10),
            child: Container(child:
              FloatingActionButton(child: Icon(Icons.location_on_sharp),backgroundColor: Color.fromARGB(255, 47, 0, 255) ,onPressed: (){
                Navigator.pushNamed(context, '/myMapsWatRongKhun');}),),
          )
        ],
      ),
    );
  }
}

class PhuSheFah extends StatelessWidget {
  const PhuSheFah({super.key});

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
          'วนอุทยานภูชี้ฟ้า',
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
                  image: AssetImage('assets/images/phushefah.png'),
                  width: 350,
                  height: 270,
                ),
                Text(
                  'วนอุทยานภูชี้ฟ้า',
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
                    '        ภูชี้ฟ้าสถานที่ท่องเที่ยวชั้นนำของจังหวัดเชียงราย โดยเฉพาะกับนักเดินป่าท่องธรรมชาติแล้ว ครั้งหนึ่งในชีวิตของพวกเขาต้องได้มาเยือนภูสูงแห่งนี้เลยทีเดียว วนอุทยานภูชี้ฟ้าอยู่สูงจากระดับน้ำทะเลปานกลางราว ๆ 1,200-1,628 เมตร โดยในอดีตนั้นเคยเป็นสมรภูมิรบ ที่เกิดจากความขัดแย้งทางความคิดทางการเมือง ระหว่างกลุ่มคนยึดมั่นในแนวทางคอมมิวนิสต์ และได้จัดตั้งพรรคคอมมิวนิสต์แห่งประเทศไทยขึ้น กับเจ้าหน้าที่รัฐ ที่ต้องเข้าปราบปรามจนเกิดเหตุการณ์นองเลือดอันน่าสลดใจ ครั้นเรื่องราวต่าง ๆ ได้คลี่คลายหวนคืนสู่สันติสุขอีกครั้ง ความงดงามของภูชี้ฟ้าก็เริ่มเป็นที่กล่าวขาน จากภาพของหน้าผาสูงที่ยื่นล้ำเข้าไปในฝั่งลาว และเป็นจุดที่สูงที่สุด ในดอยผาหม่นจนได้รับฉายาว่าเป็นจุดชมวิวที่สวยที่สุด และมีสภาพอากาศเย็นสบายตลอดทั้งปี'),
                Text(''),
                Text(
                  'เวลาเปิดทำการ',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text('ทุกวันตั้งแต่เวลา 8.00-16.30 น.'),
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
                    '        เริ่มต้นโดยใช้เส้นทางเชียงราย-เทิง ระยะทาง 64 กิโลเมตร เดินทางต่อในเส้นทางจากเทิง-บ้านยี้ ระยะทาง 6 กิโลเมตร หลังจากนั้นเลี้ยวซ้ายเข้าทางหลวงหมายเลข 1155 ผ่านบ้านปางค่า บ้านเชงเม้ง ระยะทาง 42 กิโลเมตร เป็นทางลาดยาง ก็จะถึงภูชี้ฟ้า'),
                Text(
                  'โดยรถสาธารณะ',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                Text(
                    '        เดินทางจากตัวเมืองเชียงราย โดยใช้บริการรถโดยสารประจำทาง สายเชียงราย-เทิง-เชียงของ ไปลงที่ อ.เทิง ซึ่งมีรถออกทุก 30 นาที ค่ารถโดยสารประมาณ 33 บาทถึง อ.เทิง แล้วให้นั่งรถสองแถวที่อยู่บริเวณหลังตลาดขึ้นไปยังภูชี้ฟ้า ค่าโดยสารประมาณ 70 บาท แต่รถมีรอบ 14.00 น. รอบเดียวเท่านั้น หรือใช้วิธีการเหมารถสองแถวขึ้นภูชี้ฟ้าก็ได้ ราคาเหมาอยู่ที่ 800-900 บาท'),
              ],
            ),
          ),Padding(
            padding: const EdgeInsets.only(left: 300,top:0 ,bottom: 10),
            child: Container(child:
              FloatingActionButton(child: Icon(Icons.location_on_sharp),backgroundColor: Color.fromARGB(255, 47, 0, 255) ,onPressed: (){
                Navigator.pushNamed(context, '/myMapsPhusheFah');}),),
          )
        ],
      ),
    );
  }
}

class MaJaM extends StatelessWidget {
  const MaJaM({super.key});

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
          'แม่แจ่ม',
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
                  image: AssetImage('assets/images/majam1.jpg'),
                  width: 350,
                  height: 270,
                ),
                Text(
                  'แม่แจ่ม',
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
                    '        แม่แจ่ม ตั้งอยู่ในจังหวัดเชียงใหม่ เป็นอำเภอเล็กๆ ในอ้อมกอดของหุบเขาที่มีอดีตอันยาวนาน มีผู้คนอาศัยจากหลายเชื้อชาติ แต่สิ่งหนึ่งที่ยังคงรักษาไว้ คือ วัฒนธรรมและวิถีการดำเนินชีวิตที่ยังคงความเรียบง่าย นอกจากความงดงามของวิถีชีวิตแล้ว แม่แจ่มยังเป็นเมืองสงบมีธรรมชาติที่อุดมสมบูรณ์ มีเอกลักษณ์แห่งความงดงาม คือ ทุ่งนาขั้นบันไดอันเขียวขจีในฤดูฝน และสีเหลืองทองในช่วงปลายฝน มีวัดวาอารามเก่าแก่อันทรงคุณค่า หากใครยังไม่เคยเดินทางมาแม่แจ่มควรจะหาเวลามาสัมผัสความงามให้ได้สักครั้ง'),
                Text(''),
                Text(
                  'เวลาเปิดทำการ',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text('ไม่มีวันหยุด'),
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
                    '         เส้นทางดอยอินทนนท์จากอำเภอจอมทองมีป้ายเขียนไว้ว่า “ดอยอินทนนท์” ให้เลี้ยวขวาไปตามเส้นทาง จะผ่านด่านที่ 1 ตรงน้ำตกแม่กลาง จากนั้นขับรถไปเรื่อยๆ จะผ่านที่ทำการอุทยานแห่งชาติดอยอินทนนท์ (กม.11) ขับรถตรงไป ตามเส้นทาง จนถึงด่าน 2 จะเห็นป้ายเลี้ยวซ้ายไปแม่แจ่ม (ไม่ต้องตรงไป ถ้าตรงไปจะขึ้นยอดดอยอินทนนท์) ขับมาเรื่อยๆ จนมาถึง ตัวอำเภอ รวมระยะทางแล้วประมาณ 115 กิโลเมตร รถทุกชนิดเดินทางได้ถนนเป็นทางราดยางแต่อาจชันและคดเคี้ยวเป็นหลุมบางช่วง'),
                Text(
                  'โดยรถสาธารณะ',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                Text(
                    """– จากกทม. นั่งรถสายกทม.-จอมทอง มีทั้งรถ ปอ. 1และ ปอ.2หลังจากนั้นต่อรถสองแถวที่อ.จอมทอง
– จากจอมทองนั่งรถสายจอมทอง – แม่แจ่มค่าโดยสาร 80 บาท เป็นรถสองแถวสีเหลือง คิวรถอยู่ที่ข้างวัดพระธาตุ
ศรีจอมทอง รถจะออกต่อเมื่อมีผู้โดยสารเต็ม
– จากเชียงใหม่นั่งรถไปลงอาเขต
– จากอาเขต ขึ้นรถแดงไปลงประตูเชียงใหม่ 20 บาท
– จากประตูเชียงใหม่สายเชียงใหม่ – จอมทองค่าโดยสาร 35 บาท แล้วมาลงที่จอมทอง
รถแม่แจ่มรอบแรกประมาณ 07.00 น./ 09.00 น./ 12.00 น./14.00 น./15.00 น. ทั้งไปและกลับ
เที่ยวสุดท้าย 17.00 น. ระยะเวลาในการเดินทางประมาณ 1.30 ชม. ( แม่แจ่ม-จอมทอง )"""),
              ],
            ),
          ),Padding(
            padding: const EdgeInsets.only(left: 300,top:0 ,bottom: 10),
            child: Container(child:
              FloatingActionButton(child: Icon(Icons.location_on_sharp),backgroundColor: Color.fromARGB(255, 47, 0, 255) ,onPressed: (){
                Navigator.pushNamed(context, '/myMapsMaeJam');}),),
          )
        ],
      ),
    );
  }
}
