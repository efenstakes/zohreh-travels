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
                .frame(width: 200, height: 260, alignment: .center)
            
            VStack(alignment: .leading) {
                
                HStack {
                    Spacer()
                    
                    Image(systemName: "bookmark")
                        .resizable()
                        .frame(width: 18, height: 22, alignment: .center)
                        .foregroundColor(.white)
                }
                .padding()
                
                Spacer()
                
                VStack(alignment: .leading) {
                    // name
                    Text(destination.name)
                        .font(.title3)
                        .bold()
                    
                    // country
                    Text(destination.country)
                        .font(.caption)
                        .bold()
                }
                .padding(.horizontal, 16)
                .frame(width: 200, alignment: .leading)
                .padding(.vertical, 20)
                .background(
                    Color.black.opacity(0.5)
                )
                .foregroundColor(.white)
                
            }
            
        }
        .clipped()
        .frame(width: 200, height: 260)
        .cornerRadius(16)
        .padding(.leading)
        
    }
}

