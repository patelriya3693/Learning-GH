//
//  QuoteDetailView.swift
//  QuotesChallenge
//
//  Created by Riya on 4/12/22.
//

import SwiftUI

struct QuoteDetailView: View {
    var quote:Quotes
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                ForEach(quote.all_quotes, id:\.self){ q in
                    HStack{
                        Text("-")
                        Text(q)
                            .multilineTextAlignment(.leading)
                            .padding()
                    }
                }
            }
        }.navigationBarTitle(quote.author)
    }
}

struct QuoteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = QuoteModel()
        QuoteDetailView(quote: model.quotes[0])
    }
}
