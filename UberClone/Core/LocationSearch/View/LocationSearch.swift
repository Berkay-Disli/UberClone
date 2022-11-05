//
//  LocationSearch.swift
//  UberClone
//
//  Created by Berkay Disli on 4.11.2022.
//

import SwiftUI

struct LocationSearch: View {
    @StateObject var locationSearchVM = LocationSearchViewModel()
    @State private var startLocationText = ""
    //@State private var destinationLocationText = ""
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Circle()
                        .fill(Color(.systemGray3))
                        .frame(width: 6, height: 6)
                    
                    Rectangle()
                        .fill(Color(.systemGray3))
                        .frame(width: 1, height: 24)
                    
                    Rectangle()
                        .fill(.black)
                        .frame(width: 6, height: 6)
                }
                
                VStack {
                    TextField("Current Location", text: $startLocationText)
                        .padding(.leading)
                        .frame(height: 32)
                        .background(.thickMaterial)
                        .padding(.trailing)
                    
                    TextField("Where to?", text: $locationSearchVM.queryFragment)
                        .padding(.leading)
                        .frame(height: 32)
                        .background(.ultraThinMaterial)
                        .padding(.trailing)
                }
            }
            .padding([.leading, .bottom])
            .padding(.top, 64)
            
            
            
            ScrollView(showsIndicators: false) {
                LazyVStack(alignment: .leading) {
                    ForEach(locationSearchVM.results, id:\.self) { result in
                        LocationSearchResultsCell()
                    }
                }
            }
        }
        .background(.thickMaterial)
    }
}

struct LocationSearch_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearch()
    }
}
