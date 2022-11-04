import 'package:flutter/material.dart';

class Western extends StatelessWidget {
  const Western({Key? key}) : super(key: key);

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
          'WESTERN',
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
                image: AssetImage('assets/images/khaosamyod.jpeg'),
                width: 350,
                height: 270,
              ),
              const Text(
                'อุทยานแห่งชาติเขาสามร้อยยอด',
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/khaosamyod');
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
                image: const AssetImage('assets/images/meanumcwer.jpeg'),
                width: 350,
                height: 270,
              ),
              const Text(
                'สะพานข้ามแม่น้ำแคว',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Athiti',
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/meanumcwer');
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
                image: const AssetImage('assets/images/dumnernsadurk.jpeg'),
                width: 350,
                height: 270,
              ),
              const Text(
                'ตลาดน้ำดำเนินสะดวก',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Athiti',
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/dumnernsadurk');
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
                image: const AssetImage('assets/images/hardchaum.jpeg'),
                width: 350,
                height: 270,
              ),
              const Text(
                'หาดชะอำ',
                style: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'Athiti',
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/hardchaum');
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
                Image(image:AssetImage('assets/images/teeloshu.jpg'),
                width: 350,
                height: 270,),
                Text('น้ำตกทีลอซู',
                style: TextStyle(fontSize: 20,
                fontFamily: 'Athiti',),),
                TextButton(onPressed: (){
                  Navigator.pushNamed(context, '/TeeLeoSou');
                }, child: Text('ดูเพิ่มเติม',
                style: TextStyle(
                  fontSize: 16,
                  decoration: TextDecoration.underline
                  ),)),
              ],
            ),
          ),
      ]),
    );
  }
}

class KhaoSamYod extends StatelessWidget {
  const KhaoSamYod({super.key});

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
          'อุทยานแห่งชาติเขาสามร้อยยอด',
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
                  image: AssetImage('assets/images/khaosamyod.jpeg'),
                  width: 350,
                  height: 270,
                ),
                Text(
                  'อุทยานแห่งชาติเขาสามร้อยยอด',
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
                    '        ด้วยรูปลักษณ์ของเทือกเขาหินปูนสูงตระหง่านที่กระจายตัวอยู่ทั่วบริเวณได้สร้างภูมิทัศน์อันน่าพิศวงและกลาย เป็นมนต์เสน่ห์ที่นักท่องเที่ยวเดินทางมาเยือนอุทยานแห่งชาติเขาสามร้อยยอดมากมายในแต่ละปี ชื่อของเขาสามร้อยยอดนั้น เล่าลือกันมาว่าในสมัยก่อนพื้นที่บริเวณนี้เคยเป็นท้องทะเล และมีขบวนเรือสำเภาจีนแล่นผ่านมาเกิดประสบกับมรสุมจนเรืออับปาง คนบนลำเรือนั้นรอดชีวิต 300 คนและได้ไปอาศัย อยู่ตามเกาะต่าง ๆ จึงเรียกว่า "เกาะสามร้อยยอด" และเพี้ยนมาเป็น "เขาสามร้อยยอด" มาจนทุกวันนี้ เมื่อนักท่องเที่ยวมาเยือนอุทยานฯ แล้ว จะพบกับกิจกรรมความสุขให้ทำมากมาย ตั้งแต่การเดินขึ้น ไปสู่ "จุดชมวิวเขาแดง" เพื่อเต็มอิ่มกับทัศนียภาพพระอาทิตย์ขึ้นเหนือขอบฟ้ายามเช้าซึ่งเป็นช่วงเวลาที่ดีที่สุดของ การชมวิวเหนือยอดเขาแห่งนี้ แต่ถ้าอยากชมความงามของพระอาทิตย์ตกแล้วล่ะก็ แนะนำว่าควรนั่งเรือ "ล่องคลองเขาแดง" ที่จะพาคุณไปชมดวงอาทิตย์ลับขอบฟ้าได้อย่างน่าประทับใจ และสุดท้ายต้องไปชม "ทุ่งสามร้อยยอด" ซึ่งอุดมไปด้วยพืชพรรณและสัตว์นานาชนิด และยังเป็นแหล่งดูนกที่สำคัญที่สุดอีกแห่งหนึ่ง ของเมืองไทยเลยทีเดียว '),
                Text(''),
                Text(
                  'เวลาเปิดทำการ',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text('ทุกวันตั้งแต่เวลา 8.00-16.30'),
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
                    '        เริ่มต้นเดินทางจากกรุงเทพฯ จะใช้ทางหลวงแผ่นดินหมายเลข 4 ( เพชรเกษม ) ผ่านจังหวัดเพชรบุรี มุ่งหน้าสู่ภาคใต้ จนถึงอำเภอปราณบุรี บริเวณสี่แยกปราณบุรี ให้ เลี้ยวซ้าย ไปตามถนนสายปากน้ำปราณบุรี ประมาณ 4 กิโลเมตร แล้วจึง เลี้ยวขวา ไปตามถนน รพช. อีก 31 กิโลเมตร ก็จะถึงที่ทำการอุทยานแห่งชาติหรืออาจจะเดินทางตามทางหลวงแผ่นดินหมายเลข 4 จนถึงหลักกิโลเมตรที่ 286.5 ( ใกล้บ้านสำโรงก่อนถึงอำเภอกุยบุรี ประมาณ 6 กิโลเมตร ) แล้ว เลี้ยวซ้าย ไปอีก 14 กิโลเมตร ก็จะถึงที่ทำการอุทยานแห่งชาติเช่นกัน'),
                Text(
                  'โดยรถโดยสารประจำทาง',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                Text(
                    '        มีทั้งรถโดยสารปรับอากาศและรถธรรมดา ให้บริการที่สถานีขนส่งสายใต้ใหม่ไปยังอำเภอปราณบุรี จังหวัดประจวบคีรีขันธ์ จากนั้นจะมีรถโดยสารหรอรถยนต์รับจ้างให้บริการจาก ปราณบุรี - บางปู, บางปู - แหลมศาลา, ปราณบุรี - ที่ทำการฯ, บางปู - ที่ทำการฯ'),
              ],
            ),
          ),Padding(
            padding: const EdgeInsets.only(left: 300,top:0 ,bottom: 10),
            child: Container(child:
              FloatingActionButton(child: Icon(Icons.location_on_sharp),backgroundColor: Color.fromARGB(255, 47, 0, 255) ,onPressed: (){
                Navigator.pushNamed(context, '/myMapskoawsamroy');}),),
          )
        ],
      ),
    );
  }
}

class MeaNumCwer extends StatelessWidget {
  const MeaNumCwer({super.key});

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
          'สะพานข้ามแม่น้ำแคว',
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
                  image: AssetImage('assets/images/meanumcwer.jpeg'),
                  width: 350,
                  height: 270,
                ),
                Text(
                  'สะพานข้ามแม่น้ำแคว',
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
                    '        สะพานเหล็กแห่งนี้คือแลนด์มาร์ก (Landmarks and Memorials in Thailand) ที่สำคัญที่สุดและเป็นเสมือนดังสัญลักษณ์ของจังหวัดกาญจนบุรี (visit Kanchanaburi) เลยทีเดียว โดยสะพานข้ามแม่น้ำแคว (River Kwai) แห่งนี้ได้รับความเสียหายจนรัฐบาลไทยได้ซ่อมแซมขึ้นใหม่หลังสงครามยุติลง เมื่อปี พ.ศ. 2489 และสามารถใช้งานได้เหมือนเดิมจนถึงปัจจุบัน ในทุกปีราว ๆ ปลายเดือนพฤศจิกายนจนถึงต้นเดือนธันวาคม จะมีการจัดงานสัปดาห์สะพานข้ามแม่น้ำแควเพื่อรำลึกถึงเหตุการณ์การสร้างรถไฟสายมรณะในช่วงสงครามโลกครั้งที่ 2 โดยภายในงานมีการจัดแสดงนิทรรศการทางประวัติศาสตร์และโบราณคดี การแสดงพื้นบ้าน การออกร้าน จำหน่ายสินค้าพื้นเมือง และการแสดงแสง สี เสียง สร้างความตระการตาให้กับสะพานข้ามแม่น้ำแควแห่งนี้ ไม่ไกลจากสะพานแม่น้ำแควนัก จะมีสถานที่สำคัญที่เกี่ยวข้องกันกับสะพานข้ามแม่น้ำแคว คือ สุสานทหารสัมพันธมิตรดอนรัก ซึ่งเป็นที่บรรจุศพทหารเชลยศึกซึ่งเสียชีวิตระหว่างการสร้างทางรถไฟสายมรณะ'),
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
                    '        จากกรุงเทพฯ ใช้ถนนเพชรเกษม(ทางหลวงหมายเลข 4) มุ่งหน้าสู่จังหวัดนครปฐมจากนั้นขับตรงไปมุ่งหน้าสู่จังหวัดราชบุรีหรือจากกรุงเทพฯ ใช้ถนนสายปิ่นเกล้า - นครชัยศรี (ทางหลวงหมายเลข 338) มุ่งหน้าสู่นครปฐมจากนั้นขับตรงไปมุ่งหน้าสู่ จังหวัดราชบุรี โดยทั้งสองเส้นทางด้านบนจะต้องผ่านแยกนครชัยศรี จากแยกนครชัยศรี ขับตรงไป โดยจะผ่านสะพานไปบ้านแพ้ว ประมาณ 8.5 กิโลเมตร ผ่านสะพานไปตัวเมืองนครปฐมประมาณ 0.5 กิโลเมตร ผ่านแยกไปจังหวัดสุพรรณบุรีประมาณ 6.4 กิโลเมตร จากนั้นจะถึงสะพานไปจังหวัดกาญจนบุรีประมาณ 9 กิโลเมตร รวมระยะทางประมาณ 24.4 กิโลเมตร'),
                Text(
                  'โดยรถโดยสารประจำทาง',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                Text(
                    '        จากสถานีขนส่งสายใต้ใหม่กรุงเทพฯ - กาญจนบุรีใช้เวลาประมาณ 2 ชั่วโมง โดยสามารถนั่งรถปรับอากาศสายกรุงเทพฯ-กาญจนบุรี แล้วไปลงที่สถานีขนส่งจังหวัดกาญจนบุรี จากขนส่งกาญจนบุรีนั่งรถสายกาญจนบุรี - เอราวัณ หรือรถสายกาญจนบุรี - ทองผาภูมิ - สังขละบุรี ไปลงตรงแยกซ้ายมือเข้าสะพานข้ามแม่น้ำแคว จากนั้นนั่งมอเตอร์ไซต์รับจ้างเข้าไปประมาณ 700 เมตร'),
                Text(
                  'โดยรถไฟ',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                Text(
                    '        โดยสารขบวนรถไฟประจำธนบุรี-น้ำตกหรือขบวนรถนำเที่ยวพิเศษกรุงเทพ-น้ำตก(เฉพาะเสาร์ - อาทิตย์) ลงที่;สะพานแควใหญ่ซึ่ง อยู่ที่เชิงสะพานข้ามแม่น้ำแควพอดี'),
              ],
            ),
          ),Padding(
            padding: const EdgeInsets.only(left: 300,top:0 ,bottom: 10),
            child: Container(child:
              FloatingActionButton(child: Icon(Icons.location_on_sharp),backgroundColor: Color.fromARGB(255, 47, 0, 255) ,onPressed: (){
                Navigator.pushNamed(context, '/myMapsbrigekaw');}),),
          )
        ],
      ),
    );
  }
}

class DumNernSaDurk extends StatelessWidget {
  const DumNernSaDurk({super.key});

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
          'ตลาดน้ำดำเนินสะดวก',
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
                  image: AssetImage('assets/images/dumnernsadurk.jpeg'),
                  width: 350,
                  height: 270,
                ),
                Text(
                  'ตลาดน้ำดำเนินสะดวก',
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
                    '        ตลาดน้ำดำเนินสะดวก ตั้งอยู่ในจังหวัดราชบุรี เป็นตลาดน้ำ (Thailand Floating Markets) เก่าแก่ที่มีชื่อเสียงมากที่สุดแห่งหนึ่งของเมืองไทย ในแต่ละวันจะมีนักท่องเที่ยวทั้งไทยและต่างชาติจำนวนมาก เดินทางมาชม ช็อป และชิมของอร่อย รวมทั้งซึมซับบรรยากาศของตลาดน้ำ (Thailand Water Markets) ที่มีบรรยากาศเหมือนเมื่อสมัย 100 กว่าปีก่อน ย้อนรอยคลองดำเนินสะดวก ย้อนไปราว ๆ 30 ปีที่แล้ว ตัวตลาดน้ำดำเนินสะดวกตั้งอยู่ที่คลองลัดพลีและหนาแน่นในช่วงปากคลองต่อกับคลองดำเนินสะดวกซึ่งอยู่ตรงข้ามกับตลาดน้ำในปัจจุบัน โดยเฉพาะในช่วงปี 2514-2516 เป็นช่วงเวลาที่ตลาดน้ำบูมถึงขีดสุด มีพ่อค้าแม่ขายชาวสวนแท้ ๆ พายเรือมาขายของกันจนแน่นขนัด กลายเป็นวิถีแห่งการซื้อขายของท้องถิ่น ที่สนุกสนานมาก ทั้งนี้ในปัจจุบัน คลองดำเนินสะดวกก็ยังคงได้รับความสนใจจากนักท่องเที่ยวทั้งชาวไทยและชาวต่างชาติ แวะเวียนมาสัมผัสบรรยากาศสมัยก่อน และลองลิ้มชิมรสอาหารที่พายเรือขายในคลองกันอย่างไม่ขาดสายเช่นแต่เดิม'),
                Text(''),
                Text(
                  'เวลาเปิดทำการ',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text('เปิดทุกวันตั้งแต่เวลา 7.00-17.00'),
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
                    '        เดินทางไปตามถนนเพชรเกษม (ทางหลวงหมายเลข 4) ผ่านบางแค สวนสามพราน นครชัยศรี นครปฐม เลยกิโลเมตรที่ 83 ไปเล็กน้อย จะพบแยกบางแพ เลี้ยวซ้ายมือไปตามทางหลวงหมายเลข 325 อีกประมาณ 25 กิโลเมตร ข้ามสะพานธนะรัชต์เลยไป 200 เมตร แล้วแยกขวาเข้าไปอีก 1 กิโลเมตรหรือเดินทางไปตามสายธนบุรี-ปากท่อ (ทางหลวงหมายเลข 35) ระยะทาง 63 กิโลเมตร เลี้ยวขวาเข้าทางหลวงหมายเลข 325 ผ่านตัวเมืองสมุทรสงคราม แล้วเลี้ยวเข้าสู่ทางหลวงหมายเลข 325 ไปประมาณ 12 กิโลเมตร ทางเข้าตลาดน้ำอยู่ก่อนถึงสะพานธนะรัชต์ 200 เมตร และแยกซ้ายเข้าไปอีก 1 กิโลเมตร'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HardChaum extends StatelessWidget {
  const HardChaum({super.key});

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
          'หาดชะอำ',
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
                  image: AssetImage('assets/images/hardchaum.jpeg'),
                  width: 350,
                  height: 270,
                ),
                Text(
                  'หาดชะอำ',
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
                    '        หาดชะอำ อีกหนึ่งหาดยอดนิยมของเพชรบุรี อยู่ห่างจากตัวเมือง 41 กิโลเมตร ชายหาดมีวิวสวยงาม ทรายขาวละเอียด น้ำทะเลใส ถนนเลียบชายหาดทรายเรียงรายไปด้วยแนวต้นสน เหมาะแก่การปั่นจักรยานเป็นอย่างมาก ทุกวันพุธจะมีการรณรงค์ให้หุบร่มบนชายหาด เพื่อให้ผู้ที่มาเที่ยวชมได้ชมวิวหาดแบบพาโนรามา ใกล้ๆ ชายหาดมีร้านอาหารทะเลรสชาติดี พร้อมด้วยโรงแรมและที่พักหลากหลายระดับ ตั้งแต่โรงแรมบูติก ขึ้นไปจนถึงระดับหรูหรา 5 ดาว เหมาะแก่การพักผ่อนช่วงสุดสัปดาห์เป็นที่สุด นอกจากนี้ยังมีกิจกรรมปั่นจักรยาน ขี่ม้า หรือเลือกเล่นบานาน่าโบ๊ทและสกูตเตอร์ก็ได้'),
                Text(''),
                Text(
                  'เวลาเปิดทำการ',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text('เปิดตลอดเวลา'),
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
                    '        1. จากกรุงเทพ เดินทางไปตามทางหลวงหมายเลข 4 ผ่านจังหวัดนครปฐม ราชบุรี ไปยังเพชรบุรี ตรงยาวไป จะเจอชะอำอยู่ทางซ้ายมือ เลี้ยวซ้ายเข้าไปอีก 2 กิโลเมตรก็จะถึงหาดชะอำ'),
                Text(
                    '        2. ให้ขึ้นทางด่วนลงดาวคะนอง ใช้ทางหลวงหมายเลข 35 (สายธนบุรี - ปากท่อหรือพระราม 2) ผ่านสมุทรสาคร สมุทรสงคราม และอำเภอปากท่อ แล้วแยกเข้าทางหลวงหมายเลข 4 ไปจังหวัดเพชรบุรี ตรงยาวไป ชะอำจะอยู่ทางซ้ายมือ เลี้ยวซ้ายเข้าไปอีก 2 กิโลเมตรก็จะถึงหาดชะอำ'),
                Text(
                  'โดยรถโดยสารประจำทาง',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                Text(
                    '        ไปชะอำโดยรถโดยสารประจำทางจากกรุงเทพไปชะอำ สามารถขึ้นรถได้ที่สถานีขนส่งผู้โดยสารกรุงเทพ(สายใต้ใหม่) เวลา โดยจะมีรถให้บริการตั้งแต่เวลา 04.20 - 22.20 น. ใช้เวลาในการเดินทางประมาณ 3 ชั่วโมง'),
                Text(
                  'โดยรถตู้',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                Text(
                    '        ไปชะอำโดยรถตู้จากกรุงเทพไปชะอำสามารถเดินทางโดยรถตู้โดยขึ้นรถจากคิวรถตู้ที่อนุเสาวรีย์ พระราม 2 หรือสายใต้ใหม่ไปได้เลย'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class TLauseo extends StatelessWidget {
  const TLauseo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         toolbarHeight: 90,
        backgroundColor: Color.fromARGB(255, 105, 110, 255),
        shadowColor: Colors.transparent,
        elevation: 5,
        centerTitle: true,
        title: const Text(
          'น้ำตกทีลอซู',
          style: TextStyle(fontSize: 22,), 
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Image(image:AssetImage('assets/images/teeloshu.jpg'),
                width: 350,
                height: 270,),
                Text('น้ำตกทีลอซู',
                style: TextStyle(fontSize: 22,),),
                Text('ข้อมูลทั่วไป',
                  style: TextStyle(
                  color: Colors.red,
                  ),),
                Text('        น้ำตกทีลอซู ตั้งอยู่ในเขตรักษาพันธุ์สัตว์ป่าอุ้มผาง อำเภออุ้มผาง จังหวัดตาก ได้รับคำกล่าวขานถึงว่าเป็นน้ำตกที่สวยงามที่สวยงามที่สุดในประเทศไทย ทีลอซู เป็นภาษากะเหรี่ยง แปลว่า น้ำตกดำ ตัวน้ำตกมีลักษณะเป็นน้ำตกภูเขาหินปูนขนาดใหญ่ ตั้งอยู่บนความสูงจาก ระดับน้ำทะเล 900 เมตร ความกว้างของตัวน้ำตกประมาณ 50 0เมตร ไหลลดหลั่นเป็นชั้น ๆ มีความสูงประมาณ 300 เมตร ล้อมรอบด้วยป่าดงดิบที่สมบูรณ์'),
                Text(''),
                Text('เวลาเปิดทำการ',
                style: TextStyle(
                  color: Colors.red,
                  ),),
                Text('เปิดทุกวันตั้งแต่เวลา 8.00-15.00 น.'),
                Text(''),
                Text('ข้อมูลการเดินทาง',
                style: TextStyle(
                  color: Colors.red,),),
                Text('โดยรถยนต์',
                style: TextStyle(
                  decoration: TextDecoration.underline
                  ),),
                Text('        เดินทางโดย รถยนต์ จากอำเภออุ้มผางใช้เส้นทางสายอุ้มผาง-แม่สอด ถึงหลักกิโลเมตรที่ 161 มีทางแยกซ้ายที่บ้านแม่กลองใหม่ไปด่านเดลอ หรือจุดตรวจ “เขตรักษาพันธุ์สัตว์ป่าอุ้มผาง” เป็นระยะทาง 30 กิโลเมตร จากนั้นเดินทางไปตามถนนลูกรังอีก 26 กิโลเมตร ถึงที่ทำการเขตรักษาพันธุ์สัตว์ป่าอุ้มผาง ใช้เวลาในการเดินทางโดยรถยนต์ประมาณ 3 ชั่วโมง'),
              
              
              ],
            ),
          ),Padding(
            padding: const EdgeInsets.only(left: 300,top:0 ,bottom: 10),
            child: Container(child:
              FloatingActionButton(child: Icon(Icons.location_on_sharp),backgroundColor: Color.fromARGB(255, 47, 0, 255) ,onPressed: (){
                Navigator.pushNamed(context, '/myMapsTLeoSu');}),),
          )
        ],
      ),
    );
}
}
