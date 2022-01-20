//
//  ContentView.swift
//  StudySwift
//
//  Created by 김진우 on 2020/11/04.
//

import SwiftUI

struct Friend: Identifiable {
    var id:Int
    var name: String
    
}
struct ContentView: View {
    let friends: [Friend] =
        [Friend(id:0, name:"Dal"),
         Friend(id:1, name:"Mark"),
         Friend(id:2, name:"JapGuy"),
         Friend(id:3, name:"Myself")]
    var body: some View {
        NavigationView{
            List(friends) { friends in
                
                 NavigationButton(destination:DetailView()){
                    Text(friends.name)
                }
            }.navigationBarTitle(Text("My friends"))
        }
        
    }
   
}
struct DetailView :View {
    var body: some View{
        Text("Hello")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

