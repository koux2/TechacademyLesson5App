//
//  ViewController.swift
//  SlideshowApp
//
//  Created by koux2 on 2021/03/21.
//

import UIKit

class ViewController: UIViewController {
    
    var timer: Timer!
    var imageNumber: Int!
    var imageList: [UIImage?]!
    
    @IBOutlet weak var image: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    @IBOutlet weak var prevButton: UIButton!
    @IBOutlet weak var fowardButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageList = [
            UIImage(named:"image1"),
            UIImage(named:"image2"),
            UIImage(named:"image3"),
            UIImage(named:"image4"),
            UIImage(named:"image5"),
            UIImage(named:"image6")
        ]
                
        imageNumber = 0

        showImage()
        image.imageView?.contentMode = .scaleAspectFit
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        pause()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailViewController = segue.destination as! DetailViewController
        detailViewController.image = image.image(for: .normal)
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    
    @IBAction func back(_ sender: Any) {
        prevImage()
    }
    
    @IBAction func foward(_ sender: Any) {
        nextImage()
    }
    
    @IBAction func pause(_ sender: Any) {
        pause()
    }
    
    func pause() {
        if timer == nil {
            setTimer()
        } else {
            timer.invalidate()
            timer = nil
        }
        
        setPauseTitile()
        setButtonEnable()
    }
    
    @objc func nextImageByTimer(_ timer: Timer) {
        nextImage()
        setTimer()
    }
    
    func nextImage() {
        imageNumber += 1

        if imageNumber >= imageList.count {
            imageNumber = 0
        }
        showImage()
    }
    
    func prevImage() {
        imageNumber -= 1

        if imageNumber < 0 {
            imageNumber = imageList.count - 1
        }
        showImage()
    }

    func showImage() {
        image.setImage(imageList[imageNumber], for: .normal)
    }
    
    func setTimer() {
        if timer != nil {
            timer.invalidate()
        }
        timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(nextImageByTimer(_:)), userInfo: nil, repeats: false)
    }
    
    func setPauseTitile() {
        let title = timer == nil ? "再生" : "停止"
        pauseButton.setTitle(title, for: .normal)
    }
    
    func setButtonEnable() {
        if timer != nil {
            prevButton.isEnabled = false
            fowardButton.isEnabled = false
        } else {
            prevButton.isEnabled = true
            fowardButton.isEnabled = true
        }
    }
}
