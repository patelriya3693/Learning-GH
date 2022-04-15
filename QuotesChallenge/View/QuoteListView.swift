//
//  ContentView.swift
//  QuotesChallenge
//
//  Created by Riya on 4/12/22.
//

import SwiftUI

struct QuoteListView: View {
    
    @ObservedObject var model = QuoteModel()
    
    var body: some View {
        NavigationView{
            ScrollView{
                ForEach(model.quotes){ q in
                    NavigationLink(destination: QuoteDetailView(quote: q),
                                    label:{
                                        ZStack{
                                            Image(q.image)
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                                .frame(minWidth: 350, minHeight: 375)
                                                .clipped()
                                                .cornerRadius(10)
                                                .opacity(0.8)
                                            
                                            VStack(spacing: 13.0){
                                                Text(q.main_quote)
                                                    .font(.title)
                                                    .fontWeight(.bold)
                                                
                                                Text(" - " + q.author)
                                                    .font(.title2)
                                                
                                            }.foregroundColor(Color.black)
                                                .multilineTextAlignment(.center)
                                                .padding()
                                            
                                        }.padding()
                                    }
                            )}
                        }
                    }
            }
}

struct QuoteListView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteListView()
    }
}
