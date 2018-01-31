//
//  TutorialContentsVC.swift
//  MyMemory
//
//  Created by White Hobbit on 2018. 1. 31..
//  Copyright © 2018년 WhiteHobbit. All rights reserved.
//

import UIKit

class TutorialContentsVC: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bgImageView: UIImageView!
    
    var pageIndex: Int!
    var titleText: String!
    var imageFile: String!
    
    override func viewDidLoad() {
        self.titleLabel.text = self.titleText
        self.titleLabel.sizeToFit()
        
        self.bgImageView.image = UIImage(named: self.imageFile)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
