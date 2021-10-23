//
//  DestinationCardView.swift
//  zohreh-travels
//
//  Created by MAC on 10/23/21.
//

import SwiftUI

struct DestinationCardView: View {
    var destination: Destination
    
    var body: some View {
        
        ZStack {
            
            Image(destination.image)
                .resizable()
                .frame(width: 240, height: 320, alignment: .center)
            
            VStack {
                
                HStack {
                    Spacer()
                    
                    Image(systemName: "bookmark")
                        .resizable()
                        .frame(width: 18, height: 18, alignment: .center)
                }
                
                Spacer()
                
                VStack {
                    // name
                    Text(destination.name)
                        .font(.title3)
                        .bold()
                    
                    // country
                    Text(destination.country)
                        .font(.caption)
                        .bold()
                }
                .background(
                    Color.black.opacity(0.5)
                )
                .foregroundColor(.white)
                
            }
            .padding()
            
        }
        .clipped()
        .frame(width: 240, height: 320, alignment: .center)
        .cornerRadius(20)
        
    }
}

