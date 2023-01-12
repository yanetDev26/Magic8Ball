//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Yanet Rodriguez on 11/01/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func askButton(_ sender: Any) {
        randomImage()
    }
    
    @IBOutlet weak var ballImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ballImageView.isHidden = true
    }
    
    private func randomImage(){
        ballImageView.isHidden = false
        let balls_array = [UIImage(imageLiteralResourceName: "Ball1"),
                           UIImage(imageLiteralResourceName: "Ball2"),
                           UIImage(imageLiteralResourceName: "Ball3"),
                           UIImage(imageLiteralResourceName: "Ball4"),
                           UIImage(imageLiteralResourceName: "Ball5")]
                
        ballImageView.image = balls_array.randomElement()
    }
}
