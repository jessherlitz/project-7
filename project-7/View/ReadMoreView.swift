//
//  ReadMoreViewController.swift
//  project-7
//
//  Created by Jessica Sampaio-Herlitz on 11/26/24.
//

import UIKit

class ReadMoreView: UIViewController {
    
    @IBOutlet var viewBackground: UIView!
    var catBreed: CatBreed?
    @IBOutlet weak var readMoreLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let breed = catBreed {
            setBackgroundImage(named: breed.image, alpha: 0.2)
            readMoreLabel.text = breed.story
        }
    }
    
    func setBackgroundImage(named imageName: String, alpha: CGFloat) {
        let backgroundImage = UIImageView(frame: self.view.bounds)
        backgroundImage.image = UIImage(named: imageName)
        backgroundImage.contentMode = .scaleAspectFit
        backgroundImage.alpha = alpha
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.insertSubview(backgroundImage, at: 0)
        
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: self.view.topAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
        ])
    }

    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}

