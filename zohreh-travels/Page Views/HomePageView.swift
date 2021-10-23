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
            ScrollView {
                
                Text("Hello!")
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding(.top, 40)
                
                Text("What are you looking for")
                    .font(.caption)
                
                // search
                HStack {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 18, height: 18, alignment: .leading)
                    
                    TextField("Search your trip", text: $searchText)
                }
                .background(Color.gray.opacity(0.3))
                .cornerRadius(12)
                .padding()
                
                
            }
            .padding(.horizontal)
        }
//        .navigationBarItems(
//            leading: Image(,
//            trailing: <#T##View#>
//        )
        
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
