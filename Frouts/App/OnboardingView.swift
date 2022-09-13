//
//  OnboardingView.swift
//  Frouts
//
//  Created by hazem smawy on 9/6/22.
//

import SwiftUI

struct OnboardingView: View {
    var fruits:[Fruit] = fruitsData
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
          } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        
        
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
