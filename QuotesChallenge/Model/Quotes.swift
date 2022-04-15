//
//  Quotes.swift
//  QuotesChallenge
//
//  Created by Riya on 4/12/22.
//

import Foundation

class Quotes: Identifiable, Decodable {
    
    var id:UUID?
    var author:String
    var main_quote:String
    var image:String
    var all_quotes:[String]
}
