//
//  HomePageView.swift
//  zohreh-travels
//
//  Created by MAC on 10/23/21.
//

import SwiftUI

struct HomePageView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 0) {
                    
                    // welcome section title
                    Text("Hello!")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .padding(.top, 40)
                    
                    // welcome section subtitle
                    Text("What are you looking for?")
                        .font(.body)
                        .padding(.bottom)
                    
                    // search
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 18, height: 18, alignment: .leading)
                        
                        TextField("Search your trip", text: $searchText)
                            .foregroundColor(Color.white)
                    }
                    .padding()
                    .padding(.horizontal, 12)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(32)
                    
                    
                }
            }
            .padding(.horizontal)
            .navigationBarItems(
                
                leading:
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .frame(width: 20, height: 20, alignment: .center)
                        .padding()
                        .background(
                            Circle().fill(Color.black.opacity(0.3))
                        )
                        .foregroundColor(.white),
                
                trailing:
                    Image(systemName: "bell.badge")
                        .resizable()
                        .frame(width: 20, height: 20, alignment: .center)
                        .padding()
                        .background(
                            Circle().fill(Color.black.opacity(0.3))
                        )
                        .foregroundColor(.white)
                    
            )
            .navigationBarTitleDisplayMode(.inline)
            
        }
        
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
