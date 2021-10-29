//
//  DestinationDetailsPageView.swift
//  zohreh-travels
//
//  Created by MAC on 10/23/21.
//

import SwiftUI

struct DestinationDetailsPageView: View {
    var destination: Destination
    
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    
    var body: some View {
        
        ZStack(alignment: .top) {
            
            // image
            GeometryReader { geo in
                Image(destination.image)
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: geo.size.width)
                    .ignoresSafeArea()
            }
            
            
            // details
            VStack(alignment: .leading) {
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 8) {
                    
                    // name
                    Text(destination.name)
                        .font(.title)
                        .fontWeight(.heavy)
                    
                    // country
                    Text("\(destination.city), \(destination.country)")
                        .font(.body)
                        .foregroundColor(.secondary)
                    
                    Divider()
                        .padding(.horizontal, 3)
                        .background(Color.white)
                        .padding(.vertical, 12)
                    
                    
                    HStack {
                        
                        // rating
                        HStack {
                            Image(systemName: "star")
                                .resizable()
                                .frame(width: 14, height: 14, alignment: .center)
                            Text("4.5")
                                .font(.body)
                        }
                        
                        Spacer()
                        
                        // calendar
                        HStack {
                            Image(systemName: "calendar")
                                .resizable()
                                .frame(width: 14, height: 14, alignment: .center)
                            Text("2 Days")
                                .font(.body)
                        }
                        
                        Spacer()
                        
                        // thermometer
                        HStack {
                            Image(systemName: "thermometer")
                                .resizable()
                                .frame(width: 14, height: 14, alignment: .center)
                            Text("40 C")
                                .font(.body)
                        }
                        
                    }
                    .padding(.bottom)
                    
                    // description
                    Text("Description")
                        .font(.body)
                        .bold()
                    
                    Text("If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet."
                    )
                        .font(.system(size: 16, weight: .regular))
                        .padding(.bottom)
                    
                    Button(action: {
                        print("Book it now")                    }, label: {
                        Text("Book Now")
                            .foregroundColor(.black)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(
                                Capsule().fill(Color.white.opacity(0.8))
                            )
                    })
                        
                    
                }
                .padding(20)
                .background(Color.black.opacity(0.7))
                .foregroundColor(.white)
                .cornerRadius(24)
                .padding()
                
            }
            
            
            HStack(alignment: .bottom) {
                
                Image(systemName: "chevron.backward")
                    .resizable()
                    .frame(width: 12, height: 16, alignment: .center)
                    .padding()
                    .background(
                        Circle().fill(Color.gray.opacity(0.6))
                    )
                    .foregroundColor(.white)
                    .onTapGesture {
                        presentationMode.wrappedValue.dismiss();
                    }
            
                Spacer()
                
                Image(systemName: "bell.badge")
                    .resizable()
                    .frame(width: 20, height: 20, alignment: .center)
                    .padding()
                    .background(
                        Circle().fill(Color.gray.opacity(0.6))
                    )
                    .foregroundColor(.white)
            }
            .padding(.horizontal)
            .frame(alignment: .top)
            
        }
        .navigationBarHidden(true)
        
    }
}

