//
//  GridVM.swift
//  AppStoreGrid
//
//  Created by Serafín Ennes Moscoso on 08/11/2020.
//

import Foundation

class GridVM: ObservableObject {
    // String == Category
    @Published var apps: [String: [Application]] = [:]

    public var allCategories: [String] {
        apps.keys.map({ String($0) })
    }

    public func app(for category: String) -> [Application] {
        return apps[category] ?? []
    }

    init() {
        setupApps()
    }

    func setupApps() {
        apps["Top Free Apps"] = mockApps
        apps["Popular Apps to Try"] = mockApps.shuffled()
        apps["Get Stuff Done"] = mockApps.shuffled()
        apps["Pain and Gain"] = mockApps.shuffled()
        apps["Social Networking"] = mockApps.shuffled()
    }
}
