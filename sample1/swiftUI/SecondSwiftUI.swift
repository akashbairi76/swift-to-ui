//
//  SecondSwiftUI.swift
//  sample1
//
//  Created by Bairi Akash on 23/11/23.
//

import SwiftUI

protocol DetailsInSwiftUIDelegate{
    func toggleBackground( )
}

struct SecondSwiftUI: View {
    
    var delegate : DetailsInSwiftUIDelegate?
    var body: some View {
        VStack{
            Text("SwiftUI screen").bold()
            Spacer()
            Button {
                delegate?.toggleBackground()
            } label: {
                Text("toggle")
            }
            Spacer()
        }
    }
}

struct SecondSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        SecondSwiftUI()
    }
}
