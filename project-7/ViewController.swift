//
//  ViewController.swift
//  project-7
//
//  Created by Jessica Sampaio-Herlitz on 11/26/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var catBreeds = [
        CatBreed(name: "Persian", origin: "Iran", story: "The Persian cat is one of the oldest and most recognizable cat breeds, known for its long, luxurious coat and sweet temperament."),
        CatBreed(name: "Maine Coon", origin: "United States", story: "The Maine Coon is one of the largest domesticated cat breeds, known for its friendly nature and tufted ears."),
        CatBreed(name: "Siamese", origin: "Thailand", story: "The Siamese cat is known for its striking blue eyes and elegant body, originally bred in Thailand as a temple cat."),
        CatBreed(name: "Bengal", origin: "United States", story: "The Bengal cat is a hybrid breed, a mix of domestic cats and wild Asian leopards, known for its distinctive spotted coat."),
        CatBreed(name: "Sphynx", origin: "Canada", story: "The Sphynx cat is famous for being hairless and is known for its affectionate and friendly personality."),
        CatBreed(name: "British Shorthair", origin: "United Kingdom", story: "The British Shorthair is an old British breed known for its round face, dense coat, and calm temperament."),
        CatBreed(name: "Russian Blue", origin: "Russia", story: "The Russian Blue is a graceful cat breed, known for its blue-gray coat and emerald green eyes, originating in Russia."),
        CatBreed(name: "Abyssinian", origin: "Ethiopia", story: "The Abyssinian cat is an ancient breed, thought to be one of the oldest known cat breeds, originating in Ethiopia."),
        CatBreed(name: "Ragdoll", origin: "United States", story: "The Ragdoll cat is large, affectionate, and docile, known for going limp when picked up, hence the name."),
        CatBreed(name: "Scottish Fold", origin: "United Kingdom", story: "The Scottish Fold cat is recognized by its unique folded ears, which originated due to a genetic mutation in Scotland."),
        CatBreed(name: "Norwegian Forest Cat", origin: "Norway", story: "The Norwegian Forest Cat is a hardy breed, adapted to cold climates with its thick double coat and bushy tail."),
        CatBreed(name: "Birman", origin: "Myanmar", story: "The Birman is known as the 'Sacred Cat of Burma' and is recognized by its silky fur, blue eyes, and white-gloved paws."),
        CatBreed(name: "Turkish Van", origin: "Turkey", story: "The Turkish Van is a rare breed known for its love of swimming and unique white body with colored markings on the head and tail."),
        CatBreed(name: "Oriental Shorthair", origin: "Thailand", story: "The Oriental Shorthair is a sleek and elegant breed, related to the Siamese, but available in a variety of colors and patterns."),
        CatBreed(name: "Devon Rex", origin: "United Kingdom", story: "The Devon Rex is a playful breed with large ears and a soft, curly coat, often called a 'pixie cat' due to its impish looks."),
        CatBreed(name: "Savannah", origin: "United States", story: "The Savannah is a hybrid cat, a mix between a domestic cat and a serval, known for its striking spotted coat and dog-like loyalty."),
        CatBreed(name: "Egyptian Mau", origin: "Egypt", story: "The Egyptian Mau is one of the few naturally spotted domestic cat breeds and is revered for its agility and grace."),
        CatBreed(name: "Tonkinese", origin: "Canada", story: "The Tonkinese is a cross between the Siamese and Burmese breeds, known for its affectionate and social personality."),
        CatBreed(name: "Himalayan", origin: "United States/United Kingdom", story: "The Himalayan is a cross between a Persian and a Siamese, featuring a luxurious coat and striking color points."),
        CatBreed(name: "Chartreux", origin: "France", story: "The Chartreux is a quiet and affectionate breed, known for its blue-gray coat and expressive copper-colored eyes.")
    ]
    
    var selectedCatBreed: CatBreed?
    
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
            print(selectedCatBreed!)
        
            if let destination = segue.destination as? ReadMoreView {
                destination.catBreed = self.selectedCatBreed
            }
        }
    }
    
}

