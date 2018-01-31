//
//  Utils.swift
//  MyMemory
//
//  Created by White Hobbit on 2018. 1. 31..
//  Copyright © 2018년 WhiteHobbit. All rights reserved.
//

import UIKit

extension UIViewController {
    var tutorialSB: UIStoryboard {
        return UIStoryboard(name: "Tutorial", bundle: Bundle.main)
    }
    
    func instanceTutorialVC(name: String) -> UIViewController? {
        return self.tutorialSB.instantiateViewController(withIdentifier: name)
    }
}
