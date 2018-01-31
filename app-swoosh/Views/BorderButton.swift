//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Memet RIZA on 31/01/2018.
//  Copyright © 2018 Memet RIZA. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
