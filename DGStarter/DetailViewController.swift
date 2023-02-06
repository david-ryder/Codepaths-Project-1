//
//  DetailViewController.swift
//  DGStarter
//
//  Created by David Winfield on 2/4/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    
    // Property
    var dinosaur: Dinosaur?



    // In DetailViewController:

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let dinosaur = dinosaur {
            // Configure the dinosaur image and dynamic labels
            image.image = dinosaur.image
            text.text = String(dinosaur.text)
            
            
        }




    }
    
    
    @IBOutlet weak var image: UIImageView!
    
    
    @IBOutlet weak var text: UITextView!
}
