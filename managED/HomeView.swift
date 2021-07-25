//
//  HomeView.swift
//  managED
//
//  Created by Aryan Shrivastava on 22/07/21.
//

import SwiftUI

struct HomeView: View {
    @State var showSignOut: Bool = false
    @State var viewState: CGSize = .zero
//    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            ProfileView(showSignout: $showSignOut)
            
            SignoutView()
                .offset(y: showSignOut ? 0 : screen.height)
                .offset(y: viewState.height)
                .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
                .gesture(
                    DragGesture()
                        .onChanged({ value in
                            viewState = value.translation
                        })
                        .onEnded({ value in
                            if(viewState.height > 50){
                                showSignOut = false
                            }
                            viewState = .zero
                            
                        })
                )
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


let screen = UIScreen.main.bounds
