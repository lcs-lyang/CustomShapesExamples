//
//  ContentView.swift
//  CustomShapesExamples
//
//  Created by Lillian Yang on 2022-11-17.
//

import SwiftUI

struct Diagonal : Shape {
    func path(in rect: CGRect) -> Path {
        
        //the path that describes the shape
        var path = Path()
        
        //Here is where we describe the shape
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        
        //Send back (return) the path that describes the shape
        return path
    }
    
    
}


struct ContentView: View {
    var body: some View {
        
        Diagonal()
            .stroke()
        //line
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
