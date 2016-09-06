//
//  DataManager.swift
//  Gainscope
//
//  Created by Tyler Angert on 7/27/16.
//  Copyright © 2016 Angert. All rights reserved.
//

import Foundation
import NotificationCenter

class DataManager {
    
    static let sharedInstance = DataManager()
    var listItems = [Business]()
    
    func addItem(item: Business) {
        listItems.append(item)
        NSNotificationCenter.defaultCenter().postNotificationName("updateTableViewData", object: listItems)
        
    }
    
    func removeItems() {
        self.listItems.removeAll()
    }
    
    
}