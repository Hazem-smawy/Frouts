//
//  FruitDetailView.swift
//  Frouts
//
//  Created by hazem smawy on 9/7/22.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK Property
    
    var fruit:Fruit
    var body: some View {
        NavigationView {
            ScrollView(.vertical,showsIndicators: false) {
                VStack(alignment:.center,spacing: 20) {
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20) {
                        //title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        //nuturients
                        FruitNutrientsView(fruit: fruit)
                        //subheadline
                        Text("Learn move about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        //description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        //link
                        SourseLinkView()
                            .padding(.top,10)
                            .padding(.bottom,30)
                    }
                    .padding(.horizontal,20)
                    .frame(maxWidth:640,alignment: .center)
                }
                .navigationBarTitle(fruit.title,displayMode: .inline)
                .navigationBarHidden(true)
            }//:Scroll
            .edgesIgnoringSafeArea(.top)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit:fruitsData[0])
    }
}
