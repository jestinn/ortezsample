import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';
import 'package:ortezsample/widget/priorty_container.dart';
import 'package:ortezsample/widget/text_widget.dart';
import 'package:readmore/readmore.dart';

class HistoryTab extends StatelessWidget {
  const HistoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Container(
            height: MediaQuery.of(context).size.height / 5.5,
            width: MediaQuery.of(context).size.height / 2.4,
            decoration: BoxDecoration(
                color: Colors.blue.withOpacity(.12),
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: Colors.black12)),
            child: Column(
              children: [
                const ListTile(
                  leading: CircleAvatar(
                      child: Image(
                          image: NetworkImage(
                              'https://img.freepik.com/premium-vector/little-boy-smiling-waving-hand-little-boy-portrait-circular-shape-elementary-school-student_254685-1516.jpg'))),
                  title: TextWidget(
                    text: 'Ticket Id',
                    fontSize: 18,
                    color: Colors.black,
                    fontweight: FontWeight.w500,
                  ),
                  subtitle: TextWidget(
                      text: 'Customer Name \nTicket Summary',
                      fontSize: 12,
                      color: Colors.black26),
                  trailing: Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: TextWidget(
                        text: '09/06/2023 10:12 AM',
                        fontSize: 12,
                        color: Colors.black),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    PriorityContaier(
                        text: 'Priority Level',
                        textColor: Colors.black,
                        borderColor: Colors.red.withOpacity(.6),
                        iconData: Icons.circle,
                        boxColor: Colors.redAccent.withOpacity(.3)),
                    PriorityContaier(
                        text: 'Open',
                        textColor: Colors.blue.withOpacity(.8),
                        borderColor: Colors.blue.withOpacity(.6),
                        boxColor: Colors.blue.withOpacity(.3)),
                    PriorityContaier(
                        text: '1Day1 hr 10 min',
                        textColor: Colors.teal.withOpacity(.8),
                        borderColor: Colors.teal.withOpacity(.6),
                        boxColor: Colors.teal.withOpacity(.3)),
                  ],
                ),
                Divider(thickness: 1, color: Colors.grey.withOpacity(.5)),
                const Expanded(
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextWidget(
                            text: 'Ticket Created by Manu -  09/06/2023',
                            fontSize: 12,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 1.8,
              width: MediaQuery.of(context).size.width / 6,
              // color: Colors.red,
              child: IconStepper(
                  enableNextPreviousButtons: false,
                  enableStepTapping: false,
                  direction: Axis.vertical,
                  activeStepBorderColor: Colors.green,
                  activeStepBorderPadding: 0.0,
                  activeStepBorderWidth: 0,
                  lineColor: Colors.black,
                  stepColor: Colors.white,
                  lineLength: 70,
                  icons: const [
                    Icon(Icons.access_time),
                    Icon(Icons.access_time),
                    Icon(Icons.access_time),
                    Icon(Icons.access_time),
                  ]),
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                        text: '10/06/2023 01:15PM',
                        fontSize: 16,
                        color: Colors.grey),
                    TextWidget(
                        text: 'Call Report by Appu',
                        fontSize: 16,
                        color: Colors.green),
                    Container(
                      height: MediaQuery.of(context).size.height / 9,
                      width: MediaQuery.of(context).size.width / 1.3,
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(.08),
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 10),
                            child: TextWidget(
                                text: 'Summary',
                                fontSize: 20,
                                color: Colors.black),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 5, left: 15, right: 5),
                            child: TextWidget(
                                text:
                                    'ges and web page editors now use Lorem Ipsum as their default model',
                                fontSize: 14,
                                color: Colors.black),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 240),
                            child: TextWidget(
                                text: '.....More',
                                fontSize: 14,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextWidget(
                        text: '10/06/2023 01:15PM',
                        fontSize: 16,
                        color: Colors.grey),
                    TextWidget(
                        text: 'Ticket Merged',
                        fontSize: 16,
                        color: Colors.green),
                    Container(
                      height: MediaQuery.of(context).size.height / 10,
                      width: MediaQuery.of(context).size.width / 1.3,
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(.08),
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 5, left: 15, right: 5),
                            child: TextWidget(
                                text: 'ges and web page editorsl',
                                fontSize: 14,
                                color: Colors.black),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 150, top: 30),
                            child: TextWidget(
                                text: '.....View Ticket Details',
                                fontSize: 14,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextWidget(
                        text: '10/06/2023 01:15PM',
                        fontSize: 16,
                        color: Colors.grey),
                    const TextWidget(
                        text: 'Assign Appu', fontSize: 16, color: Colors.green),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextWidget(
                        text: '10/06/2023 01:15PM',
                        fontSize: 16,
                        color: Colors.grey),
                    const TextWidget(
                        text: 'Ticket Created',
                        fontSize: 16,
                        color: Colors.green),
                    const TextWidget(
                        text: 'Ticket Created by Biju',
                        fontSize: 16,
                        color: Colors.grey),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
