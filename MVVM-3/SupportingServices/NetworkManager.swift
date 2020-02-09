//
//  NetworkManager.swift
//  MVVM-3
//
//  Created by Дамир Лутфуллин on 09.02.2020.
//  Copyright © 2020 Damir Lutfullin. All rights reserved.
//

import Foundation

class NetworkManager: NSObject {
    
    func fetchMoovies(completion: ([String]) -> () ) {
        completion(["moovie 1", "moovie 2", "moovie 3"])
    }
    
}
