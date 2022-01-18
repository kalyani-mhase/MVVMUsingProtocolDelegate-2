//
//  Service.swift
//  MVVMUsingProtocolDelegate
//
//  Created by Admin on 18/01/22.
//

import UIKit


class Service {
    func apiData3<T:Decodable>(apistring:String,resultType:T.Type,completionHandler: @escaping(_ result: T)->()){
        guard let url = URL(string: apistring) else {return}
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data else{
                return
            }
            do {
                 let result = try JSONDecoder().decode(T.self, from: data)
                completionHandler(result)
            } catch  {
                print(error.localizedDescription)
            }
        }.resume()
    }
}

