//
//  ContentView.swift
//  Testing
//
//  Created by ubeyt on 19.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    private var people: [Person] = Person.allPeople
    
    
    var body: some View {
        NavigationView {
            List{
                ForEach(people, id: \.firstName) { person in
                    NavigationLink(destination: DetailView(person: person)){
                        VStack(alignment: .leading){
                            Text("\(person.firstName) \(person.surname)")
                                .bold()
                            Text("\(person.phoneNumbers[0].number)")
                                .foregroundColor(.gray)

                        }
                    }
                    .padding(6)
                }
            }.navigationTitle("PhoneBook")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
