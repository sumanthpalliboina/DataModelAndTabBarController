//
//  ApplicationData.swift
//  DataModelAndTabBarController
//
//  Created by Palliboina on 17/04/24.
//

import Foundation

struct ApplicationData {
    var pictureList:[String]!
    var rating:[Int]!
    var selectedPicture:Int!
    
    init() {
        pictureList = ["family","teddy"]
        rating = [0,0]
        selectedPicture = 0
    }
}

var appData = ApplicationData()
