//
//  ViewController.swift
//  animationSample
//
//  Created by JW_Macbook on 2018. 9. 27..
//  Copyright © 2018년 JW_Macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var frameImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setFrameImageView()
    }
    
    
    /// Frame Animation
    func setFrameImageView() {
        /// ImageArray init
        let frameImageArray = NSMutableArray()
        for i in 10..<21 {
            frameImageArray.add(UIImage.init(contentsOfFile: Bundle.main.path(forResource: "icon\(i)@2x", ofType: "png")! ) as Any)
        }
        
        frameImageView.animationImages = frameImageArray as? [UIImage]
        frameImageView.animationDuration = 0.75
        frameImageView.animationRepeatCount = 0 // 0 means infinite (default is 0)
        frameImageView.startAnimating()
    }
}

