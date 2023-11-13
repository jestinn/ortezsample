import 'package:flutter/material.dart';
import 'package:ortezsample/widget/historypage.dart';
import 'package:ortezsample/widget/text_widget.dart';
import 'package:ortezsample/widget/ticket_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            labelPadding: EdgeInsets.only(
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
          backgroundColor: Colors.teal,
        ),
        body: TabBarView(children: [TicketDetails(), HistoryTab()]),
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
