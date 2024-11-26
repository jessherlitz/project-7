//
//  ReadMoreViewController.swift
//  project-7
//
//  Created by Jessica Sampaio-Herlitz on 11/26/24.
//

import UIKit

class ReadMoreView: UIViewController {
    
    var catBreed: CatBreed?
    @IBOutlet weak var readMoreLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let breed = catBreed {
            readMoreLabel.text = breed.story
        }
    
    }

    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}



// refactor MVC
// Upload cat pictures

