//
//  MapViewActionButton.swift
//  UberClone
//
//  Created by Berkay Disli on 4.11.2022.
//

import SwiftUI

struct MapViewActionButton: View {
    var body: some View {
        Button {
            
        } label: {
            Image(systemName: "line.3.horizontal")
                .font(.title2)
                .foregroundColor(.black)
                .padding()
                .background(.regularMaterial)
                .clipShape(Circle())
                .shadow(color: .gray, radius: 6, x: 0, y: 0)
                .frame(maxWidth: .infinity, alignment: .leading)
                
        }

    }
}

struct MapViewActionButton_Previews: PreviewProvider {
    static var previews: some View {
        MapViewActionButton()
    }
}
