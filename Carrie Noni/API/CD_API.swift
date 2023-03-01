//
//  CD_API.swift
//  Carrie Noni
//
//  Created by Deangelo Stewart on 2/28/23.
//

import Foundation

func CD_API(){
    guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1") else{
        return
    }
    
    let task = URLSession.shared.dataTask(with: url){
        data, response, error in
        
        if let data = data, let string = String(data: data, encoding: .utf8){
            print(string)
        }
    }
    
    task.resume()
}
