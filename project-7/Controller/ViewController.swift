//
//  ViewController.swift
//  project-7
//
//  Created by Jessica Sampaio-Herlitz on 11/26/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private let catBreeds = CatBreedData.shared.catBreeds
    private var selectedCatBreed: CatBreed?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return catBreeds.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "catBreedCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = catBreeds[indexPath.row].name
        content.secondaryText = catBreeds[indexPath.row].origin
        cell.contentConfiguration = content
        return cell
    }


    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let readMoreAction = UIContextualAction(style: .normal, title: "Read more") { (_, _, _) in
            
            self.selectedCatBreed = self.catBreeds[indexPath.row]
            self.performSegue(withIdentifier: "toReadMoreView", sender: self)
        }
        
        let config = UISwipeActionsConfiguration(actions: [readMoreAction])
        config.performsFirstActionWithFullSwipe = false
        return config
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toReadMoreView" {
            if let destination = segue.destination as? ReadMoreView {
                destination.catBreed = self.selectedCatBreed
            }
        }
    }
}

