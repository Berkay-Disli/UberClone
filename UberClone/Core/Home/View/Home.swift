//
//  Home.swift
//  UberClone
//
//  Created by Berkay Disli on 4.11.2022.
//

import SwiftUI
import RiveRuntime

struct Home: View {
    @State private var showLocationSearchView = false
    
    var body: some View {
        ZStack(alignment: .top) {
            UberMapViewRepresentable()
                .ignoresSafeArea()
            
            if !showLocationSearchView {
                LocationSearchActivation()
                    .padding(.top, 72)
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            showLocationSearchView.toggle()
                        }
                    }
            } else {
                #warning("When this view appears, empty the searchText inside of it.")
                LocationSearch(showLocationSearch: $showLocationSearchView)
                    .transition(AnyTransition.opacity.animation(.easeInOut))
                    .zIndex(1)
            }
            
            MapViewActionButton(showLocationSearchView: $showLocationSearchView)
                .padding(.leading)
                .padding(.top, 4)
                .zIndex(2)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
