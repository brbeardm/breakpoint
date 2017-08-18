//
//  ShadowView.swift
//  breakpoint
//
//  Created by Brian Beardmore on 8/18/17.
//  Copyright © 2017 Brian Beardmore. All rights reserved.
//

import UIKit

class ShadowView: UITextField {

    override func awakeFromNib() {
        self.layer.shadowOpacity = 0.75
        self.layer.shadowRadius = 5
        self.layer.shadowColor = UIColor.black.cgColor
        super.awakeFromNib()
    }

}
