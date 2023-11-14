import 'package:flutter/material.dart';
import 'package:ortezsample/widget/historypage.dart';
import 'package:ortezsample/widget/text_widget.dart';
import 'package:ortezsample/widget/ticket_details.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

bool isTaped = false;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          // leading: Icon(Icons.arrow_back, color: Colors.white),
          toolbarHeight: MediaQuery.of(context).size.height / 8,

          title: TabBar(
            onTap: (value) {
              print('value');
              print(value);
              setState(() {
                if (value != 1) {
                  isTaped = true;
                } else {
                  isTaped = false;
                }
              });
            },
            padding: EdgeInsets.only(top: 50),
            // tabAlignment: TabAlignment.start,
            labelPadding: const EdgeInsets.only(
              right: 20,
            ),
            isScrollable: true,

            unselectedLabelColor: Colors.white.withOpacity(.5),
            labelColor: Colors.white,
            tabs: const [
              Tab(
                text: 'Ticket Details',
              ),
              Tab(
                text: 'History',
              ),
            ],
          ),
          backgroundColor: Color(0xff001F3F).withOpacity(.8),
          actions: [
            isTaped
                ? Padding(
                    padding: const EdgeInsets.only(top: 35, right: 20),
                    child: Row(
                      children: [
                        Icon(Icons.delete, size: 35, color: Colors.red),
                        Icon(Icons.edit_calendar_outlined,
                            size: 35, color: Colors.green),
                        Icon(Icons.telegram_outlined,
                            size: 35, color: Colors.green),
                      ],
                    ),
                  )
                : SizedBox.shrink()
          ],
        ),
        body: const TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [TicketDetails(), HistoryTab()]),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 14,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedFontSize: 14,
          elevation: 0,
          onTap: (value) {
            // Respond to item press.
          },
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.sticky_note_2_rounded),
            ),
            BottomNavigationBarItem(
              label: 'Orders',
              icon: Icon(Icons.grid_view_rounded),
            ),
            BottomNavigationBarItem(
              label: 'Notifications',
              icon: Icon(Icons.notifications_on_sharp),
            ),
            BottomNavigationBarItem(
              label: 'More',
              icon: CircleAvatar(
                  child: Image(
                      image: NetworkImage(
                          'https://img.freepik.com/premium-vector/little-boy-smiling-waving-hand-little-boy-portrait-circular-shape-elementary-school-student_254685-1516.jpg'))),
            ),
          ],
        ),
      ),
    );
  }
}
