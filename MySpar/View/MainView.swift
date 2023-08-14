//
//  ContentView.swift
//  MySpar
//
//  Created by Anton on 14.08.23.
//

import SwiftUI

struct MainView: View {
    
    @State var searchText = ""
    
    var body: some View {
        VStack {
            searchBar
            
        }
    }
    
    private var searchBar: some View {
        HStack {
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.gray, lineWidth: 1)
                HStack {
                    Image(systemName: "mappin")
                        .foregroundColor(.gray)
                        .padding(.leading, 10)
                    TextField("Search", text: $searchText)
                        .padding(.vertical, 10)
                        .padding(.leading, 8)
                }
            }
            .padding(.leading, 10)
            .frame(height: 40)
            
            Button {
                //
            } label: {
                Image(systemName: "line.3.horizontal")
            }
            .padding(.trailing, 10)
            .foregroundColor(.green)
            .font(.system(size: 30))
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}