//
//  QuoteModel.swift
//  QuotesChallenge
//
//  Created by Riya on 4/12/22.
//

import Foundation

class QuoteModel: ObservableObject{
    
    @Published var quotes = [Quotes]()
    
    init(){
        let service = DataService()
        self.quotes = service.getLocalData()
    }
}
