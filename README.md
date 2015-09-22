![](http://i.imgur.com/jDq37Ip.gif?1)
![](http://i.imgur.com/77YQhPE.gif?1)

## Requirements
XCode 7.0+, iOS 8.1+

## Installation
In XCode, select 'Add Files To Project', and select the following
* RRNCollapsableSectionProtocols.swift
* RRNCollapsableTableScene.swift

## Usage
1. Build a UITableView, either in code or from interface builder.
2. Subclass UITableViewHeaderFooterView and conform to the RRNCollapsableSectionHeader Protocol. Create a nib for this subclass.
3. Subclass RRNCollapsableTableViewController and do the following inside your subclass:
	* override 'collapsableTableView' and return your table view
	* override 'model' and return a pointer to an array of objects, which conform to RRNCollapsableSectionItem Protocol.
	* override 'sectionHeaderNibName' and return the filename of the nib you created in step 2.

See the 'Example-Swift' project for a demonstration.

## License
RRNCollapsableSectionTableViewSwift is released under the MIT license. See 'LICENSE' for details.