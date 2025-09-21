import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Thư viện hệ thống

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // số tab
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        appBar: AppBar(
          backgroundColor: const Color(0xFFF0F1E3),
          title: const Text("NFCS_Read_Write"),
          centerTitle: true,
          actions: [
            PopupMenuButton<String>(
              icon: const Icon(Icons.more_vert), // ba chấm dọc
              onSelected: (value) {
                // Xử lý khi chọn menu
                if (value == 'about') {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Nhóm thực hiện: Wanna.Smile (Hutech_University)"
                        "\nPhiên 1.0.0")),
                  );
                } else if (value == 'leave') {
                  //  Thoát ứng dụng ( im port thư viện thứ 2 để thoát ra khỏi chương trình)
                  SystemNavigator.pop();
                }
              },
              itemBuilder: (BuildContext context) {
                return [
                  const PopupMenuItem(
                    value: 'about',
                    child: Text('Giới thiệu'),
                  ),
                  const PopupMenuItem(
                    value: 'leave',
                    child: Text('Thoát'),
                  ),
                ];
              },
            ),
          ],
        ),
        // Nội dung của từng tab
        body: const TabBarView(
          children: [
            Center(child: Text("Trang READ")),
            Center(child: Text("Trang WRITE")),
            Center(child: Text("Trang OTHER")),
          ],
        ),

        // TabBar đặt xuống dưới cùng
        bottomNavigationBar: const TabBar(
          indicatorColor: Colors.orange, // màu gạch dưới tab
          labelColor: Colors.black,       // màu chữ tab đang chọn
          unselectedLabelColor: Colors.grey, // màu chữ tab chưa chọn
          tabs: [
            Tab(icon: Icon(Icons.nfc)),       // tab 1: icon NFC
            Tab(icon: Icon(Icons.edit)),      // tab 2: icon viết
            Tab(icon: Icon(Icons.settings)),
          ],
        ),
      ),
    );
  }
}
