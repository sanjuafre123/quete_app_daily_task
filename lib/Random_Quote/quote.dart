import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quote_app_daily_task/Random_Quote/Model.dart';
import 'package:quote_app_daily_task/Random_Quote/quoteList.dart';

QuoteModel? quoteModel;

class QuoteScreen extends StatefulWidget {
  const QuoteScreen({super.key});

  @override
  State<QuoteScreen> createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  void initState() {
    quoteModel = QuoteModel.toList(quotesList);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: (
        Icon(Icons.format_quote_outlined,size: 30,)
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.format_quote_outlined,size: 30,),
          ),
        ],
        centerTitle: true,
        elevation: 2,
        shadowColor: Colors.grey,
        title: const Text(
          'Quotes',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(
              quoteModel!.quoteModelList.length,
              (index) => Card(
                color: cardColors[index % cardColors.length],
                child: ListTile(
                  title: Text(
                    quoteModel!.quoteModelList[index].quote!,
                    style: TextStyle(
                        color: Colors.black),
                  ),
                  subtitle: Text(
                    quoteModel!.quoteModelList[index].quote!,
                    style: TextStyle(
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Random random = Random();
          int x = random.nextInt(quoteModel!.quoteModelList.length);

          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              backgroundColor: Colors.primaries[Random().nextInt((Colors.primaries.length))],
              title: Text(
                quoteModel!.quoteModelList[x].author!,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22,color: Colors.white),
              ),
              content: Text(
                quoteModel!.quoteModelList[x].quote!,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,color: Colors.white),
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
}
