import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:projectt/zonne/Isaan.dart';

class Doypatang extends StatelessWidget {
  const Doypatang({Key? key}) : super(key: key);

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
                    image: AssetImage('assets/images/doypatang.jpg'),
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
                          'ภูกระดึง จังหวัดเลย',
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
                          'ภาคอีสาน',
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
                        const Text("""ภูกระดึง
ถือเป็นไฮไลต์แห่งภาคอีสานเลยก็ว่าได้ หากให้คุณเอ่ยถึง ที่เที่ยวอีสาน แห่งแรกที่คุณรู้จักแล้ว ชื่อของอุทยานแห่งชาติภูกระดึง จ.เลย คือภาพจำที่อยู่ในใจนักท่องเที่ยวมาอย่างยาวนานไม่ว่าคนเหล่านั้นจะเคยไปภูกระดึงหรือไม่ก็ตาม..."""),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/PhuKraDueng');
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
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 0),
                                child: likeBT(),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 0, top: 5),
                                  child: IconButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/myMaps');
                                      },
                                      icon: Icon(Icons.location_on_sharp))),
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
  int likeCount = 652;

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
