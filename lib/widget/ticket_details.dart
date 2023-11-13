import 'package:flutter/material.dart';
import 'package:ortezsample/widget/priorty_container.dart';
import 'package:ortezsample/widget/text_widget.dart';
import 'package:readmore/readmore.dart';

class TicketDetails extends StatelessWidget {
  const TicketDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Container(
            height: MediaQuery.of(context).size.height / 4.4,
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
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ReadMoreText(
                    'consectetur consectetur adipiscing elit. Nunc eu aliquet nulla. Aenean faucib aliquet nulla. Aenean faucibus mi et sapien tempus',
                    trimLines: 2,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w300),
                    colorClickableText: Colors.black,
                    moreStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                    trimMode: TrimMode.Line,
                    lessStyle:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    trimCollapsedText: '....More',
                    trimExpandedText: ' ....Less',
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
                        text: 'Reopened',
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
                            text: 'Ticket Created by Manu',
                            fontSize: 12,
                            color: Colors.black),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.keyboard_return),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.only(left: 10),
          height: MediaQuery.of(context).size.height / 10,
          width: MediaQuery.of(context).size.height / 2.4,
          decoration: BoxDecoration(
              color: Colors.blue.withOpacity(.12),
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: Colors.black12)),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextWidget(
                      text: 'Contact Person Name',
                      color: Colors.black,
                      fontSize: 19,
                      fontweight: FontWeight.w500),
                  TextWidget(
                      text: '9605546525',
                      fontSize: 15,
                      color: Colors.black.withOpacity(.6)),
                  TextWidget(
                      text: 'cp@gmail.com',
                      fontSize: 15,
                      color: Colors.black.withOpacity(.6)),
                ],
              ),
              Spacer(),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Circle-icons-phone.svg/1200px-Circle-icons-phone.svg.png'),
                ),
              )
            ],
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(Icons.phone_enabled_outlined, color: Colors.blue, size: 20),
            SizedBox(
              width: 8,
            ),
            Padding(
              padding: EdgeInsets.only(right: 25, top: 5),
              child: TextWidget(
                  text: 'Alternative Contacts',
                  fontSize: 18,
                  color: Colors.blue),
            )
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Divider(
          thickness: 1,
          color: Colors.grey.withOpacity(.5),
        ),
        const Row(
          children: [
            Icon(Icons.contacts_outlined),
            SizedBox(
              width: 20,
            ),
            TextWidget(
              text: 'Address:',
              fontSize: 18,
              color: Colors.black,
              fontweight: FontWeight.w600,
            ),
            SizedBox(
              width: 10,
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsets.only(top: 15, right: 15),
                child: TextWidget(
                    text:
                        'consectetur consectetur adipiscing elit. liquet nulla. Aenean faucib aliquet nulla',
                    fontSize: 15,
                    color: Colors.black),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Row(children: [
          Icon(Icons.web_asset_outlined),
          SizedBox(
            width: 20,
          ),
          TextWidget(
            text: 'Asset:',
            fontSize: 18,
            color: Colors.black,
            fontweight: FontWeight.w600,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: TextWidget(
                text: 'consectetur consectetur a',
                fontSize: 15,
                color: Colors.black),
          ),
        ]),
        const Row(children: [
          Icon(Icons.sticky_note_2_rounded),
          SizedBox(
            width: 20,
          ),
          TextWidget(
            text: 'Ticket Source:',
            fontSize: 18,
            color: Colors.black,
            fontweight: FontWeight.w600,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: TextWidget(
                text: 'consectetur consectetur a',
                fontSize: 15,
                color: Colors.black),
          ),
        ]),
        const Row(children: [
          Icon(Icons.group_rounded),
          SizedBox(
            width: 20,
          ),
          TextWidget(
            text: 'Group:',
            fontSize: 18,
            color: Colors.black,
            fontweight: FontWeight.w600,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: TextWidget(
                text: 'consectetur consectetur a',
                fontSize: 15,
                color: Colors.black),
          ),
        ]),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: Container(
            height: MediaQuery.of(context).size.height / 6,
            width: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                color: Colors.blue.withOpacity(.08),
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: Colors.black.withOpacity(.08))),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Padding(
                padding: EdgeInsets.only(left: 30, top: 8),
                child:
                    TextWidget(text: 'File', fontSize: 18, color: Colors.black),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 75,
                    width: 75,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                              'https://m.media-amazon.com/images/I/61BmOixtr6L._AC_UF1000,1000_QL80_.jpg',
                            ),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 75,
                    width: 75,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRT9LO1dKCBW8ngfnaZTrSgtwGacrBXFka2sA&usqp=CAU',
                            ),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 75,
                    width: 75,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRT9LO1dKCBW8ngfnaZTrSgtwGacrBXFka2sA&usqp=CAU',
                            ),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 75,
                    width: 75,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                              'https://m.media-amazon.com/images/I/61BmOixtr6L._AC_UF1000,1000_QL80_.jpg',
                            ),
                            fit: BoxFit.cover)),
                  ),
                ],
              )
            ]),
          ),
        )
      ],
    );
  }
}
