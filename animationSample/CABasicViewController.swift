//
//  CABasicViewController.swift
//  animationSample
//
//  Created by JW_Macbook on 29/10/2018.
//  Copyright © 2018 JW_Macbook. All rights reserved.
//

import UIKit

class CABasicViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let animation:CABasicAnimation = CABasicAnimation(keyPath: "transform.scale")
        animation.fromValue = 1.2
        animation.toValue = 1.0
        animation.repeatCount = Float.infinity
        animation.timingFunction = CAMediaTimingFunction(name: .linear)
        animation.duration = 0.75
        self.imageView.layer.add(animation, forKey: "transform.scale")
        
    }

}
