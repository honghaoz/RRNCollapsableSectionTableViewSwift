//
//  ViewController.swift
//  Example-Swift
//
//  Created by Robert Nash on 22/09/2015.
//  Copyright © 2015 Robert Nash. All rights reserved.
//

import UIKit

class ViewController: RRNCollapsableTableViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let menu = ModelBuilder.buildMenu()
    
    override func model() -> [RRNCollapsableSectionItemProtocol]? {
        return menu
    }

    override func sectionHeaderNibName() -> String? {
        return "MenuSectionHeaderView"
    }
    
    override func singleOpenSelectionOnly() -> Bool {
        return true
    }
    
    override func collapsableTableView() -> UITableView? {
        return tableView
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 44.0
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44.0
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCellWithIdentifier("Cell")!
    }
}
