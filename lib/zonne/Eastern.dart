import 'package:flutter/material.dart';

class Eastern extends StatelessWidget {
  const Eastern({Key? key}) : super(key: key);

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
          'EASTERN',
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
                image: AssetImage('assets/images/kohkood.png'),
                width: 350,
                height: 270,
              ),
              const Text(
                'เกาะกูด',
                style: TextStyle(fontSize: 20),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/kohkood');
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
                image: AssetImage('assets/images/kohlan.png'),
                width: 350,
                height: 270,
              ),
              const Text(
                'เกาะล้าน',
                style: TextStyle(fontSize: 20),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/kohlarn');
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
                image: AssetImage('assets/images/kohsamaesan.png'),
                width: 350,
                height: 270,
              ),
              const Text(
                'เกาะแสมสาร',
                style: TextStyle(fontSize: 20),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/kohsamaesan');
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
                image: AssetImage('assets/images/watsothorn.png'),
                width: 350,
                height: 270,
              ),
              const Text(
                'วัดโสธรวรารามวรวิหาร',
                style: TextStyle(fontSize: 20),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/watsothorn');
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
                image: AssetImage('assets/images/longgang.jpg'),
                width: 350,
                height: 270,
              ),
              const Text(
                'ล่องแก่งหินเพิง',
                style: TextStyle(fontSize: 20),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/KrangHimPeng');
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

class KohKood extends StatelessWidget {
  const KohKood({super.key});

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
          'เกาะกูด',
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
              children: [
                const Image(
                  image: AssetImage('assets/images/kohkood.png'),
                  width: 350,
                  height: 270,
                ),
                const Text(
                  'เกาะกูด',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
                const Text(
                  'ข้อมูลทั่วไป',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                const Text(
                    '        เป็นเกาะที่อยู่สุดท้ายทางทิศตะวันออกของประเทศไทยในน่านน้ำทะเลตราด และมีความใหญ่เป็นอันดับ 2 รองจากเกาะช้างในจังหวัดตราด หรือเป็นเกาะที่ใหญ่เป็นอันดับ 4 ของประเทศที่นี่คือเกาะสุดท้ายทางทิศตะวันออกของประเทศไทยในน่านน้ำทะเลตราด และยังมีขนาดใหญ่เป็นอันดับสองรองจากเกาะช้าง และเป็นเกาะที่มีขนาดใหญ่เป็นอันดับ 4 ของประเทศเลยทีเดียว แต่ความสนใจของเกาะกูดแห่งนี้ กลับไม่ใช่ขนาดที่ใหญ่โตแต่อย่างใด เพราะทะเลสีเทอร์ควอยซ์ของเกาะกูดนั้นคือมนต์เสน่ห์ ที่ทำให้เกาะกูดกลายเป็นสวรรค์ของคนรักทะเลที่มักเดินทางมาสัมผัสความสงบงามท่ามกลางวิถีชีวิตเรียบง่ายของชาวประมงบนเกาะกูดกันอยู่เสมอ น่าทำ - ชมน้ำตกคลองเจ้า น้ำตกที่มีน้ำไหลตลอดทั้งปี ซึ่งมีทั้งหมด 3 ชั้นด้วยกัน โดยเฉพาะชั้นล่างนั้น มีลักษณะเป็นลำธารจากน้ำตกขนาดใหญ่ที่นักท่องเที่ยวสามารถเล่นน้ำได้อย่างปลอดภัย'),
                const Text(''),
                const Text(
                  'เวลาเปิดทำการ',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                const Text('ทุกวันตั้งแต่เวลา 6.00-18.00 น.'),
                const Text('*หยุดวันหยุดนักขัตฤกษ์*'),
                const Text(''),
                const Text(
                  'ข้อมูลการเดินทาง',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                const Text(
                  'โดยรถยนต์ส่วนตัว',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                const Text(
                    '        จากกรุงเทพใช้ทางหลวงหมายเลข 3 (บางนา-ตราด) ผ่านชลบุรี ระยอง จันทบุรี เลยไปจนถึงจังหวัดตราดรวมระยะทางทั้งสิ้นหรือทางหลวงพิเศษ (motor way) เริ่ม กิโลเมตรที่ 0 ที่แยกถนนศรีนครินทร์ตัดถนนรามคำแหง และมาออกที่เส้นทางบ้านบึง-แกลง-จันทบุรี-ตราด'),
                const Text(
                  'โดยรถโดยสารประจำทาง',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                const Text(
                    '        รถโดยสารปรับอากาศ ออกจาก สถานีขนส่งสายตะวันออก (เอกมัย) ถนนสุขุมวิท มีรถปรับอากาศ ชั้น 1 (ปอ.1) ใช้เวลาเดินทางประมาณ'),
                const Text(
                  'เรือข้ามฟากไปเกาะกูด',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                const Text(
                    '        สามารถขึ้นเรือที่ท่าเรือแหลมศอก โดยมีตารางเดินเรือของบริษัทต่าง ๆ ที่ให้บริการ ดังนี้ (ตารางเดินเรืออาจมีการเปลี่ยนแปลงขึ้นอยู่กับสภาพอากาศ) - เรือนิลมังกร เที่ยวไป เวลา 12.00 น. เที่ยวกลับ 09.00 น. ค่าโดยสาร 350 บาท/คน/เที่ยว ใช้เวลาเดินทาง 2 ชั่วโมง'),
              ],
            ),
          ),Padding(
            padding: const EdgeInsets.only(left: 300,top:0 ,bottom: 10),
            child: Container(child:
              FloatingActionButton(child: Icon(Icons.location_on_sharp),backgroundColor: Color.fromARGB(255, 47, 0, 255) ,onPressed: (){
                Navigator.pushNamed(context, '/myMapskokgood');}),),
          )
        ],
      ),
    );
  }
}

class KohLarn extends StatelessWidget {
  const KohLarn({super.key});

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
          'เกาะล้าน',
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
              children: [
                const Image(
                  image: AssetImage('assets/images/kohlan.png'),
                  width: 350,
                  height: 270,
                ),
                const Text(
                  'เกาะล้าน',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
                const Text(
                  'ข้อมูลทั่วไป',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                const Text(
                    '        เกาะล้าน เป็นเกาะทางฝั่งทะเลอ่าวไทย เขตเมืองพัทยา จังหวัดชลบุรี ห่างจากชายฝั่งเมืองพัทยาเพียง 7 กิโลเมตร เป็นชายหาดที่นักท่องเที่ยวเลือกมาพักผ่อนมากที่สุดหาดหนึ่งของไทย เกาะล้านมีพื้นที่ประมาณ 4 ตารางกิโลเมตร มีชายหาดที่สวยงามหลายแห่ง คึกคักไปด้วยนักท่องเที่ยวที่มาเล่นน้ำ ดูปะการัง เล่นกีฬาทางน้ำ เช่น เรือลากร่มชูชีพ เรือสกี มีหาดทรายหลายหาดให้ได้เลือกพักผ่อน เช่น หาดตาแหวน มีจุดเด่นที่จุดดำน้ำชมปะการังน้ำตื้นสีสันสดใส หาดทองหลาง อยู่ติดกับหาดตาแหวน มีกิจกรรมเอาใจผู้ที่ชื่นชอบการดำน้ำดูปะการัง ทั้งการดำน้ำ บริการเดินชมปะการังใต้น้ำแบบ Sea Walker และบริการเรือท้องกระจก สำหรับผู้ที่อยากชมปะการังแบบใกล้ชิด หาดเทียน อยู่ทางตะวันตกของเกาะ เป็นหาดขนาดเล็กเหมาะแก่การมาพักผ่อนแบบส่วนตัว ส่วนหาดแสมบรรยากาศเงียบสงบกว่าหาดอื่น บริเวณเกาะล้าน ยังมีหาดอื่น ๆ อีกมากมาย'),
                const Text(''),
                const Text(
                  'เวลาเปิดทำการ',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                const Text('ทุกวันตั้งแต่เวลา 8.00-18.00 น.'),
                const Text('*หยุดวันหยุดนักขัตฤกษ์*'),
                const Text(''),
                const Text(
                  'ข้อมูลการเดินทาง',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                const Text(
                  'โดยรถยนต์',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                const Text(
                    '        จากเมืองพัทยา ให้วิ่งรถตามถนนสุขุมวิทผ่านพัทยาเหนือ-พัทยากลาง-พัทยาใต้ มาเรื่อยจนมาเจอแยกเข้า "พัทยาใต้" ก็เลี้ยวตามป้ายเข้ามา  แยกนี้จะสังเกตไม่ยากเพราะจะมีป้ายบิ๊กซีที่เห็นแต่ไกล เลี้ยวเข้าถนนพัทยาใต้มาแล้วก็ตรงตามทางมาเรื่อย จนมาเจอกับแยกไฟแดงแรกก็ให้เลี้ยวซ้ายวิ่งมาเรื่อย  พอเห็นสะพานทางยกระดับก็วิ่งขึ้นสะพานมาเลย ลงสะพานมาอีกนิดก็จะมาเจอท่าเรือเลี้ยวขวาหาที่จอดรถ'),
                const Text(
                  'โดยรถโดยสารประจำทาง',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                const Text(
                    '        จากกรุงเทพฯ ขึ้นรถบัสได้ที่สถานีขนส่งเอกมัยช่องขายตั๋วของ บ.รถรุ่งเรือง จะอยู่ข้างๆ ประตู สังเกตว่าเป็นช่องหมายเลข 48 , สถานีขนส่งหมอชิต 2 ให้ใช้ทางเข้าที่ชั้นล่าง ตรงประตูที่ 3 เมื่อถึงท่ารถจะมีรถสองแถวจอดเข้าคิวรอให้บริการอยู่ บอกเขาว่าไปท่าเรือบาลีฮาย หรือบอกไปท่าเกาะล้านก็ได้ ค่ารถโดยสารประมาณ 30 บาท'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 300,top:0 ,bottom: 10),
            child: Container(child:
              FloatingActionButton(child: Icon(Icons.location_on_sharp),backgroundColor: Color.fromARGB(255, 47, 0, 255) ,onPressed: (){
                Navigator.pushNamed(context, '/myMapskokran');}),),
          )
        ],
      ),
    );
  }
}

class KohSaMaeSan extends StatelessWidget {
  const KohSaMaeSan({super.key});

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
          'เกาะแสมสาร',
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
              children: [
                const Image(
                  image: AssetImage('assets/images/kohsamaesan.png'),
                  width: 350,
                  height: 270,
                ),
                const Text(
                  'เกาะแสมสาร',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
                const Text(
                  'ข้อมูลทั่วไป',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                const Text(
                    '        เกาะแสมสาร ใช้เวลาเดินทางแค่ราวครึ่งชั่วโมงเท่านั้น เกาะแสมสารอยู่ในเขตอำเภอสัตหีบ จังหวัดชลบุรี และอยู่ในการดูแลของทหารเรือ เปิดให้นักท่องเที่ยวไปเที่ยวชมได้แบบไปเช้าเย็นกลับเท่านั้น ไม่สามารถพักค้างคืนได้ แต่บริเวณใกล้ ๆ กับท่าเรือจะมีที่พักหลายแห่ง เกาะแสมสาร เป็น 1 ใน 9 เกาะ ของโครงการอนุรักษ์พันธุกรรมพืช อันเนื่องมาจากพระราชดำริ สมเด็จพระเทพฯ (รู้จักกันในนามของ อพ.สธ. ) เป็นแหล่งเรียนรู้และท่องเที่ยวเชิงอนุรักษ์ มีกิจกรรมต่าง ๆ มากมาย เช่น ดำน้ำชมปะการัง นั่งเรือท้องกระจกชมปะการัง พายเรือคายัค ปั่นจักรยานชมเส้นทางธรรมชาติ บนเกาะมีอุปกรณ์ดำน้ำ เสื้อชูชีพ ห้องอาบน้ำ ห้องสุขา และมีร้านขายอาหารไว้บริการนักท่องเที่ยวด้วย ในส่วนของชายหาดบนเกาะแสมสารมีด้วยกัน 5 หาด แต่สามารถเล่นน้ำและดำน้ำได้ 2 หาด คือหาดเทียนและหาดลูกลม ชายหาดบนเกาะแสมสารมีทรายขาว น้ำทะเลใส และที่น่าประทับใจมากก็คือปะการังใต้น้ำที่ค่อนข้างสมบูรณ์ เพราะมีการอนุรักษ์ไว้เป็นอย่างดี'),
                const Text(''),
                const Text(
                  'เวลาเปิดทำการ',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                const Text('ทุกวันตั้งแต่เวลา 9.00-17.00 น.'),
                const Text('*หยุดวันหยุดนักขัตฤกษ์*'),
                const Text(''),
                const Text(
                  'ค่าเข้าชม',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                const Text('ผู้ใหญ่ 300 บาท,เด็ก 200 บาท'),
                const Text(''),
                const Text(
                  'ข้อมูลการเดินทาง',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                const Text(
                  'เรือข้ามไปเกาะ',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                const Text(
                    '        ผู้ใหญ่ราคา 300 บาท, เด็ก 220 บาท, นักท่องเที่ยวต่างชาติ 600 บาท(ต้องมีคนไทยไปด้วย) สามารถซื้อบัตรข้ามเกาะได้ 1 ใบสำหรับ 1 คน เริ่มแจกบัตรคิวตั้งเเต่เวลา 06.00 น ที่พิพิธภัณฑ์ธรรมชาติวิทยาเกาะและทะเลไทย สามารถเดินชมพิพิธภัณฑ์ได้เนื่องจากราคาค่าเข้าชมรวมอยู่ในราคาตั๋วเรือแล้ว'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WatSoThorn extends StatelessWidget {
  const WatSoThorn({super.key});

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
          'วัดโสธรวรารามวรวิหาร',
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
              children: [
                const Image(
                  image: AssetImage('assets/images/watsothorn.png'),
                  width: 350,
                  height: 270,
                ),
                const Text(
                  'วัดโสธรวรารามวรวิหาร',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
                const Text(
                  'ข้อมูลทั่วไป',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                const Text(
                    '        วัดสำคัญที่สุดของจังหวัดฉะเชิงเทราเนื่องจากเป็นที่ประดิษฐาน "หลวงพ่อพุทธโสธร" พระพุทธรูปคู่บ้านคู่เมืองของจังหวัดฉะเชิงเทรา ทุกวันภายในพระอุโบสถจะอบร่ำไปด้วยควันจากธูปเทียน อันเป็นเสมือนตัวแทนแห่งศรัทธาของผู้คนจากทุกสารทิศที่เดินทางมาสักการะและขอพรจากหลวงพ่อพุทธโสธรกันอย่างเนืองแน่น โดยเชื่อกันว่าพระพุทธรูปรูปองค์นี้มีความศักดิ์สิทธิ์มาก ดลบันดาลให้พืชพันธุ์ธัญญาหาร อุดมสมบูรณ์ ปราศจากโรคภัยไข้เจ็บ โดยหลวงพ่อพุทธโสธรนั้นเป็นพระพุทธรูปปางสมาธิ หน้าตักกว้าง 1.65 เมตร สูง 1.48 เมตร สร้างขึ้นตามแบบศิลปะล้านช้าง กล่าวกันว่าพระพุทธรูปองค์นี้ลอยน้ำมาและมีผู้อัญเชิญขึ้นมาประดิษฐานที่วัดโสธรวรารามวรวิหารตั้งแต่ปี พ.ศ. 2313 ซึ่งพระพุทธรูปของจริงนั้นหล่อด้วยสัมฤทธิ์ หน้าตักกว้างศอกเศษ มีพุทธศิลป์งดงามมาก แต่ทางวัดเกรงว่าจะมีผู้คนมาลักขโมยไปจึงได้นำปูนพอกเสริมหุ้มองค์เดิมไว้จนมี ลักษณะที่เห็นในปัจจุบันและได้ประดิษฐานไว้ที่พระอุโบสถหลังใหม่ที่สร้างขึ้นตามแบบรัตนโกสินทร์ประยุกต์'),
                const Text(''),
                const Text(
                  'เวลาเปิดทำการ',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                const Text('วันจันทร์ถึงศุกร์ เวลา 7.00-16.30'),
                const Text('วันเสาร์และอาทิตย์ เวลา 7.00-17.00'),
                const Text('*หยุดวันหยุดนักขัตฤกษ์*'),
                const Text(''),
                const Text(
                  'ข้อมูลการเดินทาง',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                const Text(
                  'โดยรถยนต์',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                const Text(
                    '        จากกรุงเทพฯ สามารถเดินทางได้ 4 เส้นทาง คือ'),
                const Text(
                    '1. จากกรุงเทพฯ ไปตามทางหลวงหมายเลข 304 (กรุงเทพฯ-มีนบุรี–ฉะเชิงเทรา) ระยะทาง 75 กิโลเมตร '),
                const Text(
                    '2. จากกรุงเทพฯไปตามทางหลวงหมายเลข 34 (บางนา-ตราด) จากนั้นเลี้ยวเข้าทางหลวงหมายเลข314 (บางปะกง–ฉะเชิงเทรา) ระยะทาง 90 กม.'),
                const Text(
                    '3. จากกรุงเทพฯไปตามทางหลวงหมายเลข 3 (ผ่านสมุทรปราการ-บางปะกง) จากนั้นใช้ทางหลวงหมายเลข 314 ระยะทาง100 กิโลเมตร '),
                const Text('4. ใช้เส้นทางสายมอเตอร์เวย์'),
                const Text(
                  'โดยรถโดยสารประจำทาง',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                const Text(
                    '         หมอชิต (ใช้เส้นทางมอร์เตอร์เวย์)มีทั้งรถโดยสารธรรมดาและปรับอากาศ ออกจากจากสถานีขนส่งสายเหนือ(ถนนกำแพงเพชร 2)'),
                const Text(
                  'โดยรถไฟ',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                const Text(
                    '         รถไฟ มีบริการรถไฟออกจากสถานีหัวลำโพงไปฉะเชิงเทราทุกวัน วันละ 11 ขบวน เที่ยวแรกเวลา 05.55 น.     เที่ยวสุดท้ายเวลา 18.25 น. ค่าโดยสาร 13  บาท'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class KrangHimPeng extends StatelessWidget {
  const KrangHimPeng({super.key});

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
          'ล่องแก่งหินเพิง',
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
              children: [
                const Image(
                  image: AssetImage('assets/images/longgang.jpg'),
                  width: 350,
                  height: 270,
                ),
                const Text(
                  'ล่องแก่งหินเพิง',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
                const Text(
                  'ข้อมูลทั่วไป',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                const Text(
                    '         ฤดูฝน.....เป็นช่วงฤดูกาลซึ่งใครหลายๆ คนบ่นว่าหาสถานที่ท่องเที่ยวได้ยาก ไม่ว่าจะเดินทางไปที่ไหนๆ หากต้องพบเจอกับสายฝนที่โปรยปรายแล้ว บางคนก็มีอันจะต้องรู้สึกไม่สะดวกสบายและเสียอารมณ์เอาง่ายๆ.....แต่ถึงกระนั้น.....ในวัสสานะฤดูซึ่งเต็มเปี่ยมไปด้วยความชุ่มชื่นของพราวพรายหยดน้ำที่ร่วงหล่นลงมาจากฟากฟ้าและมากล้นไปด้วยสีสันอันเขียวขจีของมวลหมู่พฤกษ์ไพรพนา ก็ยังมีกิจกรรมการท่องเที่ยวซึ่งถือได้ว่าสนุก ตื่นเต้น เร้าใจ อีกทั้งยังสามารถเรียกเสียงหัวเราะและรอยยิ้ม (รวมถึงเสียงกรีดร้องและหยาดน้ำตา) จากผู้ที่เข้าร่วมกิจกรรมได้อยู่เสมอ ซึ่งกิจกรรมดังกล่าวนี้ก็คือ ทัวร์ล่องแก่งหินเพิง อ.นาดี จ.ปราจีนบุรี'),
                const Text(''),
                const Text(
                  'เวลาเปิดทำการ',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                const Text('วันจันทร์ถึงศุกร์ เวลา 7.00-16.30'),
                const Text('วันเสาร์และอาทิตย์ เวลา 7.00-17.00'),
                const Text('*หยุดวันหยุดนักขัตฤกษ์*'),
                const Text(''),
                const Text(
                  'ข้อมูลการเดินทาง',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                const Text(
                  'โดยรถยนต์',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                const Text(
                    '        จากกรุงเทพฯ สามารถเดินทางได้ 4 เส้นทาง คือ'),
                const Text(
                    '1. จากกรุงเทพฯ ไปตามทางหลวงหมายเลข 304 (กรุงเทพฯ-มีนบุรี–ฉะเชิงเทรา) ระยะทาง 75 กิโลเมตร '),
                const Text(
                    '2. จากกรุงเทพฯไปตามทางหลวงหมายเลข 34 (บางนา-ตราด) จากนั้นเลี้ยวเข้าทางหลวงหมายเลข314 (บางปะกง–ฉะเชิงเทรา) ระยะทาง 90 กม.'),
                const Text(
                    '3. จากกรุงเทพฯไปตามทางหลวงหมายเลข 3 (ผ่านสมุทรปราการ-บางปะกง) จากนั้นใช้ทางหลวงหมายเลข 314 ระยะทาง100 กิโลเมตร '),
                const Text('4. ใช้เส้นทางสายมอเตอร์เวย์'),
                const Text(
                  'โดยรถโดยสารประจำทาง',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                const Text(
                    '         หมอชิต (ใช้เส้นทางมอร์เตอร์เวย์)มีทั้งรถโดยสารธรรมดาและปรับอากาศ ออกจากจากสถานีขนส่งสายเหนือ(ถนนกำแพงเพชร 2)'),
                const Text(
                  'โดยรถไฟ',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                const Text(
                    '         รถไฟ มีบริการรถไฟออกจากสถานีหัวลำโพงไปฉะเชิงเทราทุกวัน วันละ 11 ขบวน เที่ยวแรกเวลา 05.55 น.     เที่ยวสุดท้ายเวลา 18.25 น. ค่าโดยสาร 13  บาท'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 300,top:0 ,bottom: 10),
            child: Container(child:
              FloatingActionButton(child: Icon(Icons.location_on_sharp),backgroundColor: Color.fromARGB(255, 47, 0, 255) ,onPressed: (){
                Navigator.pushNamed(context, '/myMapsKangHinPerng');}),),
          )
        ],
      ),
    );
  }
}
