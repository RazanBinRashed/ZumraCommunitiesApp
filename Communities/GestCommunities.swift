//
//  SwiftUIView.swift
//  Zumra
//
//  Created by Razan bin rashed on 16/06/1443 AH.
//

import SwiftUI

struct GestCommunities: View {

    @State var ProfileIsOpen : Bool = false
    var body: some View {
        ScrollView{
            VStack{
                HStack(alignment: .bottom){
                    Text("Communities")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.top, 30.0)
                    Spacer()
                    Button(action: {
                        ProfileIsOpen.toggle()
                    }){
                        Image(systemName: "person.circle.fill")
                            .font(.largeTitle)
                        
                    }
                }.padding()
                Divider().padding(.horizontal)
                VStack{
                    Text("Looking for communities?")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.bottom, 2.0)
                
                    Text("The communities you join will apear here.")
                        .font(.headline)
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 2.0)
                        .frame(width:300)
                    
                }.frame(height: 300, alignment: .bottom)
            }
        }
        .sheet(isPresented: $ProfileIsOpen, content: {
            MyProfileView()    
        })
        }
  }


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        GestCommunities()
    }
}
