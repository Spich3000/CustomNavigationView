//
//  NavBarView.swift
//  CustomNavigationView
//
//  Created by Дмитрий Спичаков on 23.10.2022.
//

import SwiftUI
import UIKit

struct NavBarView: View {
    var body: some View {
        CustomNavView {
            ZStack {
                Color.orange.ignoresSafeArea()
                
                CustomNavLink(destination:
                        Text("Destination")
                    .customNavigationTitle("Second screen")
                    .customNavigationSubTitle("Second subtitle")
                ) {
                    Text("navigate")
                }
            }
            .customNavBarItems(title: "New title", subtitle: "!", backButtonHidden: true)
        }
    }
}

struct NavBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarView()
    }
}

extension NavBarView {
    
    private var defaultNavView: some View {
        NavigationView {
            ZStack {
                Color.green.ignoresSafeArea()
                
                NavigationLink {
                    Text("Destination")
                        .navigationTitle("title 2")
                        .navigationBarBackButtonHidden(false)
                } label: {
                    Text("Navigate")
                }
            }
            .navigationTitle("Nav title here")
        }
    }
}
