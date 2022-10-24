//
//  CustomNavBarView.swift
//  CustomNavigationView
//
//  Created by Дмитрий Спичаков on 23.10.2022.
//

import SwiftUI

struct CustomNavBarView: View {
    
    @State private var showBackButton: Bool = true
    @State private var title: String = "Title"
    @State private var subTitle: String? = "Subtitle"
    
    var body: some View {
        HStack {
            if showBackButton {
                backButton
            }
            Spacer()
            titleSection
            Spacer()
            if showBackButton {
                backButton
                    .opacity(0)
            }
        }
        .padding()
        .accentColor(.white)
        .foregroundColor(.white)
        .font(.headline)
        .background(Color.blue.ignoresSafeArea(edges: .top))
    }
}

struct CustomNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CustomNavBarView()
            Spacer()
        }
    }
}

extension CustomNavBarView {
    
    private var backButton: some View {
        Button {
            
        } label: {
            Image(systemName: "chevron.left")
        }
    }
    
    private var titleSection: some View {
        VStack(spacing: 4) {
            Text(title)
                .font(.title)
                .fontWeight(.semibold)
            if let subTitle = subTitle {
                Text(subTitle)
            }

        }
    }
    
}
