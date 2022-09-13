//
//  SettingsView.swift
//  Frouts
//
//  Created by hazem smawy on 9/7/22.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding:Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical,showsIndicators: false){
                VStack(spacing:20) {
                    // secion 1
                    GroupBox(label:
                                LableView(labelText: "Fruit", labelImage: "info.circle"))
                    {
                        Divider().padding(.vertical,4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaleEffect()
                                .frame(width:80,height: 80)
                                .cornerRadius(10)
                            
                            Text("Most fruits are naturall low in fat ,sodium ,an calories. Fruits are sources of may essential nutriesnts")
                                .font(.footnote)
                        }
                        
                    }
                    //secion 2
                    GroupBox(label:
                                LableView(labelText: "Customization", labelImage: "paintbrush"))
                    {
                        Divider().padding(.vertical,4)
                        Text("If you wish ,you can restart the application by toogle the switch")
                            .padding(.vertical,8)
                            .frame(minHeight:60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding){
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8,style: .continuous))
                        )
                        
                    }
                    GroupBox(label:LableView(labelText: "Application", labelImage: "apps.iphone")){
                       
                        
                        SettingsRowView(name: "Developer",content: "Hazem/Hazem")
                        SettingsRowView(name: "Designer",content: "Robert Petras")
                        SettingsRowView(name: "Compatibility",content: "iOS 15")
                        SettingsRowView(name: "Website", content: "SwiftUi", linkLabel: "Swift ui masterclass", linkDestination: "swiftuimasterclass.com")
                        SettingsRowView(name: "Twitter",content: "mohammed")
                        
                    }
                    //sectin 3
                }
            }
            .navigationBarTitle("Setting",displayMode: .large)
            .navigationBarItems( trailing:
                                    Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
            }))
            .padding()
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
