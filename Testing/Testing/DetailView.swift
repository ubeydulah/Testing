//
//  DetailView.swift
//  Testing
//
//  Created by ubeyt on 15.05.2023.
//

import SwiftUI

struct DetailView: View {
    
    var person: Person
    
    
    var body: some View {
        
        VStack(spacing : 10) {
            Text("\(person.firstName) \(person.surname)")
                .bold()
            Text("\(person.phoneNumbers[0].number)")
            Text("\(person.address.streetAddress)")
            Text("\(person.address.city)")

        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(person: Person.samplePerson)
    }
}
