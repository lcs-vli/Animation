import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var y : Int
    
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = -80
        y = 250
        
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        canvas.drawShapesWithBorders = false
        
        x += 90
  
        //draw the grey circle above using grey
        canvas.fillColor = Color(hue: 0, saturation: 0, brightness: 80, alpha: 50)
        canvas.drawEllipse(at: Point(x: x - 30, y: y + 30), width: 80, height: 100)
        
        //change the color back to black
        canvas.fillColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
        // Draw the big ellipse
        canvas.drawEllipse(at: Point(x: x, y: 250), width: 80, height:40)
        
        // Draw the 4 small ellipses around
        canvas.drawEllipse(at: Point(x: x + 35, y: y + 25), width: 10, height: 10)
        canvas.drawEllipse(at: Point(x: x + 45, y: y + 10), width: 10, height: 10)
        canvas.drawEllipse(at: Point(x: x + 45, y: y - 10), width: 10, height: 10)
        canvas.drawEllipse(at: Point(x: x + 35, y: y - 25), width: 10, height: 10)
        
        // pause for 1 second
        do {
            sleep(1)
        }
    }
    
}
