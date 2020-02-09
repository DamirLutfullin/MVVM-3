//
//  ViewModel.swift
//  MVVM-3
//
//  Created by Дамир Лутфуллин on 09.02.2020.
//  Copyright © 2020 Damir Lutfullin. All rights reserved.


import Foundation


class ViewModel: NSObject {
    
    @IBOutlet weak var networkManager: NetworkManager!
    
    private var movies: [String]?
    
    func fetchMovies(completion: @escaping () -> ()) {
        networkManager.fetchMoovies { [weak self] (movies) in
            self?.movies = movies
        }
        completion()
    }
    
    func numberOfRowsInSection() -> Int {
        return movies?.count  ?? 0
    }
    
    func titleForCell(at indexPath: IndexPath) -> String {
        guard let title = movies else { return "massive is nil" }
        return title[indexPath.row]
    }
}
