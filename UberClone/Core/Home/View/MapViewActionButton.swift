//
//  MapViewActionButton.swift
//  UberClone
//
//  Created by Berkay Disli on 4.11.2022.
//

import SwiftUI

struct MapViewActionButton: View {
    @Binding var showLocationSearchView: Bool
    @State private var showButtonAfterTime = false
    
    var body: some View {
        if showLocationSearchView {
            Button {
                withAnimation(.easeInOut) {
                    showLocationSearchView.toggle()
                }
            } label: {
                if showButtonAfterTime {
                    Image(systemName: "chevron.left")
                        .font(.title2)
                        .foregroundColor(.black)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    withAnimation(.easeInOut) {
                        showButtonAfterTime.toggle()
                    }
                }
            }
            .onDisappear {
                withAnimation(.easeInOut) {
                    showButtonAfterTime.toggle()
                }
            }
        }
    }
}

struct MapViewActionButton_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
