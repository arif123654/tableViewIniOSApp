//
//  DescViewController.swift
//  imageViewDesc
//
//  Created by apple on 1/22/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class DescViewController: UIViewController {

    @IBOutlet weak var descImageView: UIImageView!
    
    var OImages:UIImage?
    override func viewDidLoad() {
        super.viewDidLoad()
        descImageView.image = OImages
        

    }
    

}
