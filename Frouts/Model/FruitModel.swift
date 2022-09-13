//
//  FruitModel.swift
//  Frouts
//
//  Created by hazem smawy on 9/6/22.
//

import SwiftUI


struct Fruit:Identifiable {
    var id = UUID()
    var title:String
    var headline:String
    var image:String
    var gradientColors:[Color]
    var description:String
    var nutrition:[String]
}

