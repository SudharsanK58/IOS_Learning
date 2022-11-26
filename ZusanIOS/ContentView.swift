//
//  ContentView.swift
//  ZusanIOS
//
//  Created by Sudhar Zan on 22/11/22.
//

import SwiftUI

struct ContentView: View {
    @State private var Label_text = "Default value"
    @State private var textInput = ""
    @State private var TextEditor_text = "Enter hereß"
    var body: some View {
        VStack{
            HeaderView(Label_text2: $Label_text)
            TextField(TextEditor_text,text: $textInput)
                .textFieldStyle(.roundedBorder)
            Button(action:{
                if textInput == "" {
                    TextEditor_text = "Enter the correct value"
                }else{
                    print(textInput)
                    Label_text = textInput
                    textInput = ""
                }
            },label: {Text("Press here")})
            Spacer()
        }
    }
}

struct HeaderView: View{
    @Binding var Label_text2: String
    var body: some View{
        Text(Label_text2)
            .padding(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
