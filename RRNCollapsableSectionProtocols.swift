//
//  RRNCollapsableSectionProtocols.swift
//  Example-Swift
//
//  Created by Robert Nash on 22/09/2015.
//  Copyright © 2015 Robert Nash. All rights reserved.
//

import UIKit

protocol RRNCollapsableSectionHeaderProtocol {
    func open(animated: Bool);
    func close(animated: Bool);
    var sectionTitleLabel: UILabel! { get }
    var interactionDelegate: RRNCollapsableSectionHeaderReactiveProtocol! { get set }
    var tag: Int { get set }
}

protocol RRNCollapsableSectionHeaderReactiveProtocol {
    func userTapped(view: RRNCollapsableSectionHeaderProtocol)
}

protocol RRNCollapsableSectionItemProtocol {
    var title: String { get }
    var isVisible: Bool { get set }
    var items: [AnyObject] { get }
}
