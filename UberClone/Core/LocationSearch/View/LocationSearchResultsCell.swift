//
//  LocationSearchResultsCell.swift
//  UberClone
//
//  Created by Berkay Disli on 4.11.2022.
//

import SwiftUI

struct LocationSearchResultsCell: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "mappin.circle.fill")
                    .resizable()
                    .foregroundColor(.blue)
                    .accentColor(.white)
                    .frame(width: 40, height: 40)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Starbucks Coffe")
                        .font(.body)
                    
                    Text("Emirgan Mah. Istanbul ")
                        .font(.system(size: 15))
                        .foregroundColor(.gray)
                    
                }
                .padding(.leading, 8)
                .padding(.vertical, 8)
                
                Spacer()
            }
            Divider()
        }
        .padding(.leading)
    }
}

struct LocationSearchResultsCell_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearch()
    }
}
