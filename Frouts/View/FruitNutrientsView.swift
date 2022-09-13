//
//  FruitNutrientsView.swift
//  Frouts
//
//  Created by hazem smawy on 9/7/22.
//

import SwiftUI

struct FruitNutrientsView: View {
    var fruit:Fruit
    let nut :[String] = ["Enery","Sugar","Fat","Protein","Vitamins","Minerals"]
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g"){
                ForEach(0..<nut.count ,id: \.self) { item in
                    Divider().padding(.vertical,2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nut[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
            
        }//:Box
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[1])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 372, height: 480))
            .padding()
    }
}
