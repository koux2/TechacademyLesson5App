//
//  DetailViewController.swift
//  SlideshowApp
//
//  Created by koux2 on 2021/03/21.
//

import UIKit

class DetailViewController: UIViewController {

    var image: UIImage!
    @IBOutlet weak var detailImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        detailImage.image = image
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
