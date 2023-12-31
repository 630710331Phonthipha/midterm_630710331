import 'package:flutter/material.dart';

import '../new/new_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_colorful.jpg"),
              opacity: 0.6,
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Good Morning',
                  textAlign: TextAlign.center, style: textTheme.headlineMedium),
              Text('630710331',
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black87)),
              Spacer(),
              _buildQuizView(),
              Spacer(),
              _buildButtonPanel(),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQuizView() {
    // สร้างกรอบที่มีคำถามและตัวเลือก 4 ข้อ
    return Card(
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Question 1 of 2',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(50.0),
                border: Border.all(color: Colors.grey),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Which planet is know as the "Red Planet"',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 16.0),

            _buildOption('Earth', Icons.looks_one,false),
            _buildOption('Mars',Icons.looks_two,true),
            _buildOption('Venus',Icons.looks_3,false),
            _buildOption('Jupiter',Icons.looks_4,false),
          ],
        ),
      ),
    );
  }

  Widget _buildOption(String optionText, IconData icon, bool isSelected) {
    Color iconColor = isSelected ? Colors.red : Colors.black;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: ListTile(
            leading: icon != null
                ? Padding(
              padding: const EdgeInsets.only(right: 8.0), // เพิ่มระยะห่างที่นี่
              child: Icon(icon, color: iconColor),
            )
                : null,
            title: Text(optionText),
            trailing: Radio(
              value: optionText,
              groupValue: null,
              onChanged: null,
            ),
          ),
        ),
      ),
    );
  }




  Widget _buildButtonPanel() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: IconButton(
                onPressed: () {
                  // เพิ่มโค้ดที่ต้องการให้ทำเมื่อปุ่มถูกแตะที่นี่
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => NewPage(), // NewPage เป็นหน้าใหม่ที่คุณต้องการไป
                    ),
                  );
                },
                icon: Icon(Icons.arrow_back_ios),
              ),
            ),
            SizedBox(width: 16.0),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: IconButton(
                onPressed: () {
                  // เพิ่มโค้ดที่ต้องการให้ทำเมื่อปุ่มถูกแตะที่นี่
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => NewPage(), // NewPage เป็นหน้าใหม่ที่คุณต้องการไป
                    ),
                  );
                },
                icon: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ],
        ),
      ],
    );
  }


}
