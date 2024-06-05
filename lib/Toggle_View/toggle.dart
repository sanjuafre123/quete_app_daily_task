import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quote_app_daily_task/Random_Quote/Model.dart';
import 'package:quote_app_daily_task/Random_Quote/quoteList.dart';
import 'package:quote_app_daily_task/Toggle_View/toggleList.dart';

QuoteModel? quoteModel;

class ToggleScreen extends StatefulWidget {
  const ToggleScreen({super.key});

  @override
  State<ToggleScreen> createState() => _ToggleScreenState();
}

class _ToggleScreenState extends State<ToggleScreen> {
  void initState() {
    quoteModel = QuoteModel.toList(quotesList);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Color(0xffFFDA78),
        ),
        leading: (const Icon(
          Icons.person_rounded,
          size: 27,
        )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  iconView = !iconView;
                });
              },
              child: Icon(
                iconView ? CupertinoIcons.list_bullet : Icons.apps,
                color: Colors.black,
              ),
            ),
          ),
        ],
        centerTitle: true,
        elevation: 2,
        shadowColor: Colors.grey,
        backgroundColor: const Color(0xffFF7F3E),
        title: const Text(
          'Toggle View',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: Colors.black
          ),
        ),
      ),
      body: iconView ? buildListView() : buildGridView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Random random = Random();
          int x = random.nextInt(quoteModel!.quoteModelList.length);

          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              backgroundColor:
                  Colors.primaries[Random().nextInt((Colors.primaries.length))],
              title: Text(
                quoteModel!.quoteModelList[x].author!,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                    color: Colors.white),
              ),
              content: Text(
                quoteModel!.quoteModelList[x].quote!,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.white),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).pop();
                    });
                  },
                  child: Text(
                    'back',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).pop();
                    });
                  },
                  child: Text(
                    'save',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          );
        },
        child: Icon(
          Icons.notification_add,
          color: Colors.black,
          size: 34,
        ),
      ),
    );
  }

  ListView buildListView() {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => Card(
        color: ToColorsList[index % ToColorsList.length],
        child: ListTile(
          title: Text(
            quoteModel!.quoteModelList[index].quote!,
            style: const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
          ),
          subtitle: Text(
            quoteModel!.quoteModelList[index].author!,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 19),
          ),
        ),
      ),
    );
  }
  Widget buildGridView() {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) => Card(
        color: ToColorsList[index % ToColorsList.length],
        child: ListTile(
          title: Text(
            quoteModel!.quoteModelList[index].quote!,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          subtitle: Text(
            quoteModel!.quoteModelList[index].quote!,
            style: TextStyle(
              color: Colors.white,
              fontSize: 19,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}

bool iconView = false;
