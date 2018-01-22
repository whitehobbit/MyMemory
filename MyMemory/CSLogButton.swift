//
//  CSLogButton.swift
//  MyMemory
//
//  Created by White Hobbit on 2018. 1. 22..
//  Copyright © 2018년 WhiteHobbit. All rights reserved.
//

import UIKit

public enum CSLogType: Int {
    case basic, title, tag
}

public class CSLogButton: UIButton {
    public var logType: CSLogType = .basic
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.setBackgroundImage(UIImage(named: "button-bg"), for: .normal)
        self.tintColor = UIColor.white
        
        self.addTarget(self, action: #selector(logging(_:)), for: .touchUpInside)
    }
    
    @objc func logging(_ sender: UIButton) {
        switch self.logType {
        case .basic:
            NSLog("버튼이 클릭되었습니다.")
        case .title:
            let btnTitle = sender.titleLabel?.text ?? "타이틀 없는"
        case .tag:
            NSLog("\(sender.tag)")
        }
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
