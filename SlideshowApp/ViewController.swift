//
//  ViewController.swift
//  SlideshowApp
//
//  Created by koux2 on 2021/03/21.
//

import UIKit

class ViewController: UIViewController {
    
    // UIImage のインスタンスを設定
    let image1 = UIImage(named:"image1")
    let image2 = UIImage(named:"image2")
    let image3 = UIImage(named:"image3")
    let image4 = UIImage(named:"image4")
    let image5 = UIImage(named:"image5")
    let image6 = UIImage(named:"image6")

    @IBOutlet weak var image: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image.setImage(image1, for: .normal)
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    
    @IBAction func back(_ sender: Any) {
    }
    
    @IBAction func foward(_ sender: Any) {
    }
    
    @IBAction func pause(_ sender: Any) {
    }
}
