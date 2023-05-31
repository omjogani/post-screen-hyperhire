import 'package:flutter/material.dart';
import 'package:hyperhire_assignment/widgets/add_comment_widget.dart';
import 'package:hyperhire_assignment/widgets/comment_widget.dart';
import 'package:hyperhire_assignment/widgets/nav_bar.dart';
import 'package:hyperhire_assignment/widgets/post_widget.dart';
import 'package:hyperhire_assignment/widgets/profile_widget.dart';

class HomeScreenMobile extends StatelessWidget {
  const HomeScreenMobile({super.key});

  static String description = '''지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아~
혹시 어떤 상품이 제일 괜찮았어? 

후기 올라오는거 보면 로우라이즈? 그게 제일 반응 좋고 그 테이블이 
제일 재밌었다던데 맞아???

올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가
아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에
있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~!''';

  static List<String> comments = [
    '''어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭 
우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도
아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다
괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니
꼭 봐주세용~!''',
    '''오 대박! 라이브 리뷰 오늘 올라온대요? 챙겨봐야겠다''',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 13.0),
      child: Column(
        children: <Widget>[
          NavBar(
            title: "자유톡",
            actionIcon: Icons.notifications_outlined,
            onActionIconClick: () {},
            onLeadingIconClick: () {},
          ),
          const SizedBox(height: 35.0),
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                ProfileWidget(
                  buttonText: "팔로우",
                  name: "안녕 나 응애 ",
                  extraText: "1일전",
                  height: 165,
                  weight: 53,
                  isVerified: true,
                  imagePath: "assets/images/profile.png",
                  onButtonClick: () {},
                ),
                const SizedBox(height: 18.0),
                PostWidget(
                  title: "지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?",
                  description: description,
                  tags: const <String>[
                    "#2023",
                    "#TODAYISMONDAY",
                    "#TOP",
                    "#POPS!",
                    "#WOW",
                    "#ROW"
                  ],
                  imagePath: "assets/images/post.jpg",
                  likes: 5,
                  comments: 5,
                ),
                const SizedBox(height: 4.0),
                CommentWidget(
                  imagePath: const <String>[
                    "assets/images/profile.png",
                    "assets/images/profile2.png"
                  ],
                  name: const <String>["안녕 나 응애 ", "ㅇㅅㅇ"],
                  extraText: const <String>["1일전", "1일전"],
                  isVerified: const <bool>[true, false],
                  inMorePressed: () {},
                  comments: comments,
                  likes: const <int>[5, 5],
                  totalComments: const <int>[5, 0],
                ),
              ],
            ),
          ),
          const AddCommentWidget(),
        ],
      ),
    );
  }
}
