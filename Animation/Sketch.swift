import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var xd : Int
    var y : Int
    var yd : Int
    var x2 : Int
    var xd2 : Int
    var y2 : Int
    var yd2 : Int
    var lineLength : Double
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = random(from: 1, toButNotIncluding: 501)
        xd = 2
        y = random(from: 1, toButNotIncluding: 501)
        yd = 2
        x2 = random(from: 1, toButNotIncluding: 501)
        xd2 = 2
        y2 = random(from: 1, toButNotIncluding: 501)
        yd2 = 2
        
        lineLength = 0
        
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        lineLength = sqrt(Double(Int(pow(Double(x) - Double(x2),2)) + Int(pow(Double(y)-Double(y2), 2))))
        print(lineLength)
//        canvas.fillColor = Color.white
//        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
//
        
     
        x += xd
        y += yd
        if x > 500 {
            xd = -2
        }
        
       
        if x < 0 {
            xd = 2
        }
        
        if y > 500 {
            yd = -2
        }
        
        
        if y < 0 {
            yd = 2
        }
        
        x2 += xd2
        y2 += yd2
        if x2 > 500 {
            xd2 = -2
        }
        
        
        if x2 < 0 {
            xd2 = 2
        }
        
        if y2 > 500 {
            yd2 = -2
        }
        
        
        if y2 < 0 {
            yd2 = 2
        }
     
        
//        canvas.fillColor = Color.white
//        canvas.drawEllipse(centreX: x2, centreY: 250, width: 300, height: 300, borderWidth: 10)
//        canvas.drawEllipse(centreX: x, centreY: y, width: 50, height: 50, borderWidth: 10)
       
        if lineLength < 150 {
            canvas.drawLine(fromX: x, fromY: y, toX: x2, toY: y2)
        }
        
    }
    
}


