import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class Majam extends StatelessWidget {
  const Majam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: ListView(
        children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Image(
                  image: AssetImage('assets/images/majam1.jpg'),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 10),
                    child: Row(
                      children: const [
                        Text(
                          'แม่แจ่ม จังหวัดเชียงใหม่',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7, bottom: 0, left: 5),
                    child: Row(
                      children: const [
                        Text(
                          'ภาคเหนือ',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 280,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      children: [
                        const Text("""แม่แจ่ม 
อำเภอเล็กๆในจังหวัดเชียงใหม่ดินแดนนครลับแลแห่งเมืองล้านนาโดดเดี่ยวท่ามกลางป่าถูกโอบล้อมไปด้วยภูเขาอยู่ในอ้อมกอดของแม่น้ำอย่างอบอุ่นรอยยิ้มผู้คนเป็นมิตรสนิทกันเหมือนญาตินี่คือเอกลักษณ์และคำนิยามความเป็นแม่แจ่มได้อย่างชัดเจนเพราะที่นี่ยังคงเงียบสงบมีหมู่บ้านอยู่ตามที่ราบและ..."""),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/MaJaM');
                                },
                                child: const Text(
                                  'ดูข้อมูลเพิ่มเติม',
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(16)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 0, left: 0),
                          child: Column(
                            children:  [
                              Padding(
                                padding: EdgeInsets.only(left: 0),
                                child: likeBT(),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 0, top: 5),
                                  child: IconButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/myMapsmajam');
                                      },
                                      icon: Icon(Icons.location_on_sharp)
                                      )
                                      ),
                              Padding(
                                padding: EdgeInsets.only(left: 0, top: 10),
                                child: Icon(
                                  Icons.share,
                                  size: 32,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class likeBT extends StatefulWidget {
  const likeBT({Key? key}) : super(key: key);

  @override
  State<likeBT> createState() => _likeBTState();
}

class _likeBTState extends State<likeBT> {
  bool isLiked = false;
  int likeCount = 421;

  @override
  Widget build(BuildContext context) {
    const double size = 35;

    return LikeButton(
      size: size,
      isLiked: isLiked,
      likeCount: likeCount,
      countPostion: CountPostion.bottom,
    );
  }
}
