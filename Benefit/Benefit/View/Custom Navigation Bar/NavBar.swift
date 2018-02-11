//
//  NavBar.swift
//  Benefit
//
//  Created by Delta One on 23/01/18.
//  Copyright © 2018 IOSD. All rights reserved.
//

import UIKit
import MIBadgeButton_Swift

class NavBar: UIView
{
    @IBOutlet weak var hamButton: UIButton!
    @IBOutlet var contentView: NavBar!
    @IBOutlet weak var coachButton: UIButton!
    @IBOutlet weak var notificationsButton: MIBadgeButton!
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        setUpNavBar()
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        
        setUpNavBar()
    }
    
    private func setUpNavBar()
    {
        
        Bundle.main.loadNibNamed("NavBar", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }

}
