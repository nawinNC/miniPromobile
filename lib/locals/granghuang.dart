import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class Ganghueng extends StatelessWidget {
  const Ganghueng({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: ListView(
        children: [
          Column(
            children: [
              Container(
                child: const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Image(
                    image: AssetImage('assets/images/nzmtoksarikagrang.jpg'),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 10),
                    child: Row(
                      children: const [
                        Text(
                          'น้ำตกสาริกา',
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
                          'ภาคกลาง',
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
                        const Text("""น้ำตกสาริกา
น้ำตกขนาดใหญ่ไหลลงจากหน้าผาถึง 9 ชั้น กับธรรมชาติสีเขียวขจีมีมุมสวยๆ ไว้ให้เล่นน้ำเบาๆ ถ่ายรูปชิคๆ ยิ่งถ้าไปในฤดูฝนก็จะมีน้ำมากเป็นพิเศษ จึงทำให้ส่วนใหญ่จะมีนักท่องเที่ยวเลือกที่จะไปช่วงหน้าฝน..."""),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/NamToksarika');
                                },
                                child: const Text(
                                  'ดูข้อมูลเพิ่มเติม',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
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
                                        Navigator.pushNamed(context, '/myMapsgranghuang');
                                      },
                                      icon: Icon(Icons.location_on_sharp))
                                      ),
                              Padding(
                                padding: EdgeInsets.only(left: 0, top: 10),
                                child: Icon(
                                  Icons.share,
                                  size: 30,
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
  int likeCount = 854;

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
