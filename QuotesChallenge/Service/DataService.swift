//
//  DataService.swift
//  QuotesChallenge
//
//  Created by Riya on 4/12/22.
//

import Foundation

class DataService {
    
    func getLocalData() -> [Quotes]{
     
        let pathString = Bundle.main.path(forResource: "quotes", ofType: "json")
        
        guard pathString != nil else{
            return [Quotes]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        do{
            let data = try Data(contentsOf: url)
            
            let quoteData = try JSONDecoder().decode([Quotes].self, from: data)
            for q in quoteData{
                q.id = UUID()
            }
            return quoteData
        }
        catch{
            print(error)
        }
        return [Quotes]()
    }
}
