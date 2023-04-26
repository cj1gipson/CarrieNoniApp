//
//  CD_API.swift
//  Carrie Noni
//
//  Created by Deangelo Stewart on 2/28/23.
//

import UIKit

// API using a url
func CD_API(){
    
    print("In CD API")
// URL for API
    let url = URL(string: "http://127.0.0.1:4000/")!

    var request = URLRequest(url: url)
    
// setting the HTTP method to GET but could be PUT
    
    request.httpMethod = "GET"
    
    print("URL \(url)")
    
// change header fields for the request
    ////////////////////////////////////////////////
    
    request.allHTTPHeaderFields = [
        "X-API-Key": "123456789"
    ]
    
    request.setValue("application/png", forHTTPHeaderField: "Content-Type")
    
    let task = URLSession.shared.dataTask(with: url){ data, response, error in
        if let data = data {
            print("data from url \(data.description)")
            let image = UIImage(data: data)
            print("image \(String(describing: image))")

        } else if let error = error {
            print("HTTP Request Failed \(error)")
        }
    }
    task.resume()
}




func RequestJ(){
    let url = URL(string: "https://bit.ly/3sspdFO")!

    var request = URLRequest(url: url)
    
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
}

func Booktype(){
    struct Book: Decodable {
        
        let title: String
        let author: String

    }

    let url = URL(string: "https://bit.ly/3sspdFO")!

    var request = URLRequest(url: url)

    request.setValue("application/json", forHTTPHeaderField: "Content-Type")

    let task = URLSession.shared.dataTask(with: url) { data, response, error in
        if let data = data {
            if let books = try? JSONDecoder().decode([Book].self, from: data) {
                print(books)
            } else {
                print("Invalid Response")
            }
        } else if let error = error {
            print("HTTP Request Failed \(error)")
        }
    }
}
