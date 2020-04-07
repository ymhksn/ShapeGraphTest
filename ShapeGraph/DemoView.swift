//
//  DemoView.swift
//  ShapeGraph
//
//  Created by Yohanes Markus Heksan on 07/04/20.
//  Copyright © 2020 Yohanes Markus Heksan. All rights reserved.
//

import UIKit

class DemoView: UIView {
    
    var path: UIBezierPath!
    
    //make a container/frame for our shape to reside. In this ex, the container is in rectangle shape, it will adjust the size automatically with the data or shape inside of it.
    override init(frame: CGRect) {
        //initialise the frame
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.darkGray
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    //for the shape to take place in the frame you made above, you must use this func draw, which is a command to make the shape appear in the apps.
    override func draw(_ rect: CGRect) {
        //Call the function to draw the shape you specify.
        //self.createRectangle()
        //self.createTriangle()
        
        // Create an oval shape path inside the frame
        //self.path = UIBezierPath(ovalIn: self.bounds)
        
        /*
        // Create an oval shape path with provided coordinate and height weight.
        self.path = UIBezierPath(ovalIn: CGRect(
        x: self.frame.size.width/2 - self.frame.size.height/2,
        y: 0.0,
        width: self.frame.size.height,
        height: self.frame.size.height)
        )
        */
        
        
        //make round corner for the path
        //path = UIBezierPath(roundedRect: self.bounds, cornerRadius: 15.0)
        
        /*
         //make a round corner for specific corner of the path. Ex below is the top left and bottom right. And then specify the radius.
         path = UIBezierPath(roundedRect: self.bounds,
         byRoundingCorners: [.topLeft, .bottomRight],
         cornerRadii: CGSize(width: 15.0, height: 0.0)
         )
         */
        
        //Ada perubahan disni.
        
        // Specify the fill color and apply it to the path.
        UIColor.orange.setFill()
        path.fill()
        
        // Specify a border (stroke) color.
        UIColor.purple.setStroke()
        path.stroke()
    }
    
    func createRectangle() {
        // Initialize the path.
        path = UIBezierPath()
        
        // Specify the point that the path should start get drawn (Starting point)
        path.move(to: CGPoint(x: 0.0, y: 0.0))
        
        // Create a line between the starting point and the bottom-left side of the view.
        path.addLine(to: CGPoint(x: 0.0, y: self.frame.size.height))
        
        // Create the bottom line (bottom-left to bottom-right).
        path.addLine(to: CGPoint(x: self.frame.size.width, y: self.frame.size.height))
        
        // Create the vertical line from the bottom-right to the top-right side.
        path.addLine(to: CGPoint(x: self.frame.size.width, y: 0.0))
        
        // Close the path. This will create the last line automatically.
        path.close()
    }
    
    func createTriangle() {
        path = UIBezierPath()
        path.move(to: CGPoint(x: self.frame.width/2, y: 0.0))
        path.addLine(to: CGPoint(x: 0.0, y: self.frame.size.height))
        path.addLine(to: CGPoint(x: self.frame.size.width, y: self.frame.size.height))
        path.close()
    }
    
}
