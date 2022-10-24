//
//  NavBarView.swift
//  CustomNavigationView
//
//  Created by Дмитрий Спичаков on 23.10.2022.
//

import SwiftUI

struct NavBarView: View {
    var body: some View {
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

struct NavBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarView()
    }
}
