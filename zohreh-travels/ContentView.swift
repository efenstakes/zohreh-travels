//
//  ContentView.swift
//  zohreh-travels
//
//  Created by MAC on 10/23/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        TabView {
            
            HomePageView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }

            ExplorePageView()
                .tabItem {
                    Label("Explore", systemImage: "location.circle")
                }


            BookmarkedPageView()
                .tabItem {
                    Label("Bookmarked", systemImage: "bookmark")
                }


            AccountPageView()
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle")
                }

        }
               
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
