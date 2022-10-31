//
//  CustomNavView.swift
//  CustomNavigationView
//
//  Created by Дмитрий Спичаков on 31.10.2022.
//

import SwiftUI

struct CustomNavView<Content:View>: View {
    
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        NavigationView {
            CustomNavBarContainerView {
                content
            }
            .navigationBarHidden(true)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct CustomNavView_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavView {
            Color.red.ignoresSafeArea()
        }
    }
}



// MARK: Gesture to dismiss destination view in navigation view
extension UINavigationController {

    open override func viewDidLoad() {
        super.viewDidLoad()
//        self.navigationController?.interactivePopGestureRecognizer?.delegate = nil;
        interactivePopGestureRecognizer?.delegate = nil
    }

}
