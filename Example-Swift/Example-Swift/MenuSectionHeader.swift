//
//  MenuSectionHeader.swift
//  Example-Swift
//
//  Created by Robert Nash on 22/09/2015.
//  Copyright © 2015 Robert Nash. All rights reserved.
//

import UIKit

class MenuSectionHeaderView: UITableViewHeaderFooterView, RRNCollapsableSectionHeaderProtocol {
    
    @IBOutlet weak var sectionTitleLabel: UILabel!
    @IBOutlet weak var arrowImageView: UIImageView!
    
    var interactionDelegate: RRNCollapsableSectionHeaderReactiveProtocol!
    
    func radians(degrees: Double) -> Double {
        return M_PI * degrees / 180.0
    }
    
    private var isRotating = false
    
    func open(animated: Bool) {
        
        if animated && !isRotating {
            
            isRotating = true
            
            UIView.animateWithDuration(0.2, delay: 0.0, options: [.AllowUserInteraction, .CurveLinear], animations: { () -> Void in
                self.arrowImageView.transform = CGAffineTransformIdentity
                }, completion: { (let finished) -> Void in
                    self.isRotating = false
            })
        } else {
            layer.removeAllAnimations()
            arrowImageView.transform = CGAffineTransformIdentity
            isRotating = false
        }
    }
    
    func close(animated: Bool) {
        
        if animated && !isRotating {
            
            isRotating = true
            
            UIView.animateWithDuration(0.2, delay: 0.0, options: [.AllowUserInteraction, .CurveLinear], animations: { () -> Void in
                self.arrowImageView.transform = CGAffineTransformMakeRotation(CGFloat(self.radians(180.0)))
                }, completion: { (let finished) -> Void in
                    self.isRotating = false
            })
        } else {
            layer.removeAllAnimations()
            arrowImageView.transform = CGAffineTransformMakeRotation(CGFloat(radians(180.0)))
            isRotating = false
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        interactionDelegate?.userTapped(self)
    }
}
