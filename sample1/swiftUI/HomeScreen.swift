//
//  HomeScreen.swift
//  sample1
//
//  Created by Bairi Akash on 22/11/23.
//

import SwiftUI

struct HomeScreen: View,SomeDelegate {
    func set(_ text: String) {
        self.text = text
    }
    
    @State private var text: String = ""
   
    var body: some View {
        VStack {
            Text("SwiftUI screen").bold()
            Spacer()
            Text(text).bold()
            HStack {
                Spacer()
                Text("UIView:").bold()
                UITextFieldViewRepresentable(text: $text)
                    .frame(height: 55)
                    .background {
                        Rectangle()
                        .frame(maxHeight: 55)
                        .foregroundColor(.gray)
                    }
                Spacer( )
            }

            Spacer( )
            NavigationLink {
                DetailViewRepresentable(delegate : self)
            } label: {
                Text("Go to UIView").bold().foregroundColor(.red)
            }
            Spacer(minLength: 10)
        }
        .background {
            RoundedRectangle(cornerRadius: 0)
            .foregroundColor(.teal)
        }
        
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
