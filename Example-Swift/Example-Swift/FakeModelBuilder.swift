//
//  FakeModelBuilder.swift
//  Example-Swift
//
//  Created by Robert Nash on 22/09/2015.
//  Copyright © 2015 Robert Nash. All rights reserved.
//

import Foundation

class MenuSection: RRNCollapsableSectionItemProtocol  {
    
    var title: String
    var isVisible: Bool
    var items: [AnyObject]
    
    init() {
        title = ""
        isVisible = false
        items = []
    }
}

class ModelBuilder {
    
    class func buildMenu() -> [RRNCollapsableSectionItemProtocol] {
        
        var collector = [RRNCollapsableSectionItemProtocol]()
        
        for var i = 0; i < 5; i++ {
            
            let section = MenuSection()
            
            switch i {
            case 0:
                section.title = "Option 1"
                section.isVisible = true
                section.items = [NSNull(), NSNull(), NSNull()]
            case 1:
                section.title = "Option 2"
                section.items = [NSNull(), NSNull(), NSNull(), NSNull(), NSNull(), NSNull()]
            case 2:
                section.title = "Option 3"
                section.items = [NSNull(), NSNull(), NSNull()]
            case 3:
                section.title = "Option 4"
                section.items = [NSNull(), NSNull()]
            case 4:
                section.title = "Option 5"
                section.items = [NSNull(), NSNull(), NSNull(), NSNull()]
            default:
                break
                
            }
            
            collector.append(section)
        }
        
        return collector
    }
}