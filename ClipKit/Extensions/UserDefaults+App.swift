//
//  UserDefaults+App.swift
//  ClipboardManager
//
//  Created by Riley Testut on 6/14/19.
//  Copyright © 2019 Riley Testut. All rights reserved.
//

import Foundation

@objc public enum HistoryLimit: Int, CaseIterable
{
    case _10 = 10
    case _25 = 25
    case _50 = 50
    case _100 = 100
}

public extension UserDefaults
{    
    @NSManaged var historyLimit: HistoryLimit
}

public extension UserDefaults
{
    func registerAppDefaults()
    {
        self.register(defaults: [#keyPath(UserDefaults.historyLimit): HistoryLimit._25.rawValue])
    }
}
