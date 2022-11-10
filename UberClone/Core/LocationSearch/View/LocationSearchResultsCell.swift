//
//  LocationSearchResultsCell.swift
//  UberClone
//
//  Created by Berkay Disli on 4.11.2022.
//

import SwiftUI

struct LocationSearchResultsCell: View {
    let title: String
    let subtitle: String
    
    var body: some View {
        VStack {
            HStack {
                #warning("Find a way to change map icon")
                Image(systemName: "mappin.circle.fill")
                    .resizable()
                    .foregroundColor(.blue)
                    .accentColor(.white)
                    .frame(width: 40, height: 40)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(title)
                        .font(.body)
                    
                    Text(subtitle)
                        .font(.system(size: 15))
                        .foregroundColor(.gray)
                    
                }
                .padding(.leading, 8)
                .padding(.vertical, 8)
                
                Spacer()
            }
            .padding(.leading)
            Divider()
        }
    }
}

struct LocationSearchResultsCell_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearch(showLocationSearch: .constant(true))
    }
}
