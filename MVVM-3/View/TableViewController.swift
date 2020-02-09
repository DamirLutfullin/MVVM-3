//
//  ViewController.swift
//  MVVM-3
//
//  Created by Дамир Лутфуллин on 09.02.2020.
//  Copyright © 2020 Damir Lutfullin. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    @IBOutlet var viewModel: ViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.fetchMovies { [weak self] in
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.numberOfRowsInSection()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    
        cell.textLabel?.text = viewModel.titleForCell(at: indexPath)
        
        return cell
    }
    
}

