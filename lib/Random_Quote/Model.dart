

class QuoteModel {
  String? quote;
  String? author;

  QuoteModel({this.quote, this.author});

  List<QuoteModel> quoteModelList = [];

  factory QuoteModel.formQuote(Map data) {
    return QuoteModel(author: data['author'], quote: data['quote']);
  }

  QuoteModel.toList(List l1) {
    for (int i = 0; i < l1.length; i++) {
      quoteModelList.add(QuoteModel.formQuote(l1[i]));
    }
  }
}
