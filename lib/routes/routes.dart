import 'package:flutter/material.dart';

import '../Random_Quote/quote.dart';
import '../dialoge/DialogeBox.dart';
import '../invoice/pdf/PDF.dart';
import '../invoice/pdf/invoiceGenerator.dart';
import '../invoice/pdf/invoicedetails.dart';

class MyRoutes {
  static Map<String, Widget Function(BuildContext)> myRoutes = {
    // '/Dialogue': (context) => const DialogueScreen(),
    // '/': (context) => const InvoiceDetails(),
    // '/detail': (context) => const InvoiceGenerator(),
    // '/pdf': (context) => const PdfScreen(),
    '/': (context) => const QuoteScreen(),
  };
}
