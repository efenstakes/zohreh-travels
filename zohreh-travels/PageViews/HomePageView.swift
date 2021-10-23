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
                        
                        
                        // categories
                        Text("Categories")
                            .font(.title3)
                            .fontWeight(.heavy)
                            .padding(.bottom, 8)
                            .padding(.top, 20)
                        
                        // icons
                        HStack(alignment: .center, spacing: 20) {
                            ForEach(categories, id: \.title) { category in
                                VStack {
                                    
                                    Image(category.image)
                                        .resizable()
                                        .frame(width: 22, height: 22, alignment: .center)
                                        .padding()
                                        .background(
                                            Circle().fill(Color.black.opacity(0.4))
                                        )
                                        .foregroundColor(.white)
                                    Text(category.title)
                                        .font(.caption2)
                                    
                                }
                            }
                        }
                    }
                    .padding(.horizontal)
                    
                    
                    // destinations
                    Text("Trending Now")
                        .font(.title3)
                        .fontWeight(.heavy)
                        .padding(.bottom, 8)
                        .padding(.top, 40)
                        .padding(.horizontal)
                    
                    // destinationes
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(destinations) { destination in
                                DestinationCardView(destination: destination)
                            }
                        }
                    }
//                    .padding(.top, 20)
                    
                }
            }
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
