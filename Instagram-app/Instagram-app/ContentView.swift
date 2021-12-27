//
//  ContentView.swift
//  Instagram-app
//
//  Created by rido alpredo on 27/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(spacing: 0.0) {
            
            
            Header()
            ScrollView(.vertical, showsIndicators: false){
            Stories()
   
            Divider()
            
            Post()
            
            Post(image: "dog", description: "Almost 2 years old")
                
            }
            TabBar()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Header: View {
    var body: some View {
        HStack {
            Image("logo")
            
            Spacer()
            
            HStack(spacing: 20.0) {
                Image("add")
                Image("heart")
                Image("messenger")
            }
         
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 3)
    }
}

struct Story: View {
    var image: String = "profile"
    var name: String = "Saidin"
    
    var body: some View {
        VStack {
            VStack{
                Image(image)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(50)
                
                    .overlay(
                        Circle()
                            .stroke(LinearGradient(colors: [.red, .purple, .red, .orange, .yellow, .orange], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2.3)
                            .frame(width: 68, height: 68)
                    )
                    .frame(width: 70, height: 70)
                Text(name)
                    .font(.caption)
            }
        }
    }
}

struct Stories: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 15.0) {
                Story()
                Story(image: "profile2", name: "R.Alpredo")
                Story(image: "profile3", name: "Riama")
                Story(image: "profile4", name: "Riko")
                Story(image: "profile5", name: "Alpredo")
                Story(image: "profile6", name: "Rido")
                Story(image: "profile7", name: "Sari")
                Story(image: "profile8", name: "Nesa")
            }
            .padding(.horizontal, 8)
        }
        .padding(.vertical, 10)
    }
}

struct PostHeader: View {
    var body: some View {
        HStack {
            HStack{
                Image("profile")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .cornerRadius(50)
                
                Text("Rido Alpredo")
                    .font(.caption).bold()
            }
            Spacer()
            
            Image("more")
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 8)
    }
}

struct PostContent: View {
    var image: String = "dog"
    
    var body: some View {
        VStack(spacing: 0.0){
            Image(image)
                .resizable()
                .frame(width: .infinity)
                .aspectRatio(contentMode: .fit)
            
            HStack{
                HStack(spacing: 10.0) {
                    Image("heart")
                    Image("messenger")
                    Image("search")
                    
                }
                Spacer()
                Image("bookmark")
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 9)
        }
    }
}

struct Post: View {
    var image: String = "profile"
    var description: String = "*Rido Alpredo* Ios Developer, create instagram-app desember 2021.."
    var body: some View {
        PostHeader()
        
        PostContent(image: image)
        
        VStack(alignment: .leading, spacing: 0.0) {
            Text("100 Likes").bold()
                .padding(.horizontal, 12)
            Text(description)
                .font(.footnote)
                .frame(width: .infinity)
                .padding(.horizontal, 12)
            
            HStack{
                Image("profile")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .cornerRadius(50)
                Text("Add Comment...")
                    .font(.caption)
                    .foregroundColor(Color.secondary)
                
                Spacer()
                
                HStack {
                    Image(systemName: "face.smiling.fill")
                    Image(systemName: "face.smiling")
                    Image(systemName: "plus.circle")
                        .foregroundColor(Color.secondary)
                }
                
                
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 9)
        }
    }
}

struct TabBar: View {
    var body: some View {
        VStack(spacing: 0.0) {
            Divider()
            HStack{
                Image("home")
                Spacer()
                Image("search")
                Spacer()
                Image("reels")
                Spacer()
                Image("shop")
                Spacer()
                Image("profile")
                    .resizable()
                    .frame(width: 21, height: 21)
                    .cornerRadius(50)
            }
            .padding(.horizontal, 25)
            .padding(.top, 10)
            
            
            
        }
    }
}
