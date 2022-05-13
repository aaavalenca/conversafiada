//
//  RotatedButton.swift
//  ConversaFiada
//
//  Created by aaav on 12/05/22.
//

import UIKit

@IBDesignable
class RotatedButton: UIButton {

        @IBInspectable var rotation: Double = 0 {
            didSet {
                rotateButton(rotation: rotation)
            }
        }
    
        func rotateButton(rotation: Double)  {
            self.transform = CGAffineTransform(rotationAngle: CGFloat(.pi * rotation))
        }
}
