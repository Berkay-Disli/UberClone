//
//  LocationSearch.swift
//  UberClone
//
//  Created by Berkay Disli on 4.11.2022.
//

import SwiftUI
import RiveRuntime

struct LocationSearch: View {
    @EnvironmentObject var locationSearchVM: LocationSearchViewModel
    @State private var startLocationText = ""
    @Binding var showLocationSearch: Bool
    
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
                    
                    #warning("Add clear text function.")
                    TextField("Where to?", text: $locationSearchVM.queryFragment)
                        .padding(.leading)
                        .frame(height: 32)
                        .background(.ultraThinMaterial)
                        .padding(.trailing)
                    
                    
                }
            }
            .padding([.leading, .bottom])
            .padding(.top, 64)
            
            if locationSearchVM.results.isEmpty {
                VStack {
                    RiveViewModel(fileName: "placeholder")
                        .view()
                        .frame(height: 350)
                        .transition(AnyTransition.scale.animation(.easeInOut))
                    
                    Spacer()
                }
            } else {
                ScrollView(showsIndicators: false) {
                    LazyVStack(alignment: .leading) {
                        ForEach(locationSearchVM.results, id:\.self) { result in
                            LocationSearchResultsCell(title: result.title, subtitle: result.subtitle)
                                .onTapGesture {
                                    locationSearchVM.selectLocation(result)
                                    showLocationSearch.toggle()
                                }
                        }
                    }
                }
                .transition(AnyTransition.opacity.animation(.easeInOut))
            }
            
            
        }
        .background(.thickMaterial)
    }
}

struct LocationSearch_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearch(showLocationSearch: .constant(true))
            .environmentObject(LocationSearchViewModel())
    }
}
