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
                } label: {
                    Text("Navigate")
                }

            }
        }
    }
}

struct NavBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarView()
    }
}
