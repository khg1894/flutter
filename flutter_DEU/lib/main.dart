import 'package:flutter/material.dart';

//프로그램 실행을 위해 main이 필요함
void main() {
  //플러터는 프레임워크 -> 제어의 역전(IOC)
  //앱을 실행시켜줘 (개발자가 프레임워크에 요청)
  //매개변수는 widget
  //const는 컴파일 시점에 데이터 고정
  //바뀌지 않는 화면에서만 사용가능
  //데이터가 필요하지 않는 화면에는 무조건 const 붙이기
  runApp(const MyApp2());
}

//stateful 상태를 가질 수 있다
class MyApp2 extends StatefulWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  State<MyApp2> createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  //state 안의 변수는 관찰된다.
  int count = 0;
  final item= {
    ""
  };
  // void increaseCount(){
  //   //stateful의 변수를 변경할 때에는 무족너 setstate 함수를 사용한다.
  //   setState(() {
  //     count++;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('모바일 ID'),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Container(
            color: Colors.grey,
            child: Column(
              children: [
                SizedBox(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.supervised_user_circle,
                              color: Colors.blue,
                              size: 150,
                            ),
                            Icon(
                              Icons.qr_code,
                              color: Colors.black,
                              size: 150,
                            ),
                          ],
                        ),
                        Container(
                            width: 350,
                            height: 2,
                            color: Colors.blue,
                            margin: EdgeInsets.symmetric(vertical: 10)),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("ID : khg1894"),
                              Text("status"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),

                )
              ],
            )),
        endDrawer: Drawer(),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.phone_android),
              label: "모바일 ID",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.food_bank),
              label: "D-Food",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet_outlined),
              label: "D-PAY",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book_outlined),
              label: "좌석배정",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "환경설정",
            ),
          ],
          selectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
        ),
      ),
    );
  }
}
