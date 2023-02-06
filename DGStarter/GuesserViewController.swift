//
//  ViewController.swift
//  DGStarter
//
//  Created by Maribel Montejano on 12/13/22.
//

import UIKit

class GuesserViewController: UIViewController {

    // MARK: Models

    // Create individual Dinosaurs using Dinosaur model
    let first = Dinosaur(
        text: "I run the Daily Bugle, and I am determined to show New York the kind of menace that Spider-Man really is", image: UIImage(named: "jonah")!)
        
       
    let second = Dinosaur(text: "I want pictures of Spider-Man! Get me pictures of Spider-Man!!", image: UIImage(named: "jameson")!)
    
    let third = Dinosaur(text: "I will pay $500 for a front-page-worthy picture of the masked vigilante himself!! Get me pictures of Spider-Man!!", image: UIImage(named: "spiderman")!)
    

    // Array for storing Dinosaurs
    var dinosaurs: [Dinosaur] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Store Dinosaur models
        dinosaurs = [first, second, third]

    }


    @IBAction func didTapDinosaur(_ sender: UITapGestureRecognizer) {
        
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.dinosaur = dinosaurs[0]
            } else if tappedView.tag == 1 {
                detailViewController.dinosaur = dinosaurs[1]
            } else if tappedView.tag == 2 {
                detailViewController.dinosaur = dinosaurs[2]
            } else if tappedView.tag == 3 {
                detailViewController.dinosaur = dinosaurs[3]
            } else {
                print("no Dinosaur was tapped, please check your selection.")
            }
        }
    }
}

