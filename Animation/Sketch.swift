import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Double
    
    let xstartingPosition = Double(random(from: 10, to: 490))
    let ystartingPosition = Double(random(from: 10, to: 490))
    
    let black = Color(hue:100, saturation: 100, brightness: 0, alpha: 100)
    let white = Color(hue:0, saturation: 0, brightness: 100, alpha: 100)
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        
        // Change position
        x += 0.5
        
        canvas.drawShapesWithBorders = false
        
        canvas.fillColor = black
        
        // Draw an ellipse in a random place
        canvas.drawEllipse(at: Point(x: xstartingPosition + x, y: ystartingPosition + x), width: 50, height: 50)
        
        //change the color
        canvas.fillColor = white
        
        //drwa a rectanlge to cover up the trace
        canvas.drawEllipse(at: Point(x: xstartingPosition + x, y: ystartingPosition + x), width: 50, height: 50)
        
        
        //xstartingPosition + x == 0 || xstartingPosition + x == 500||ystartingPosition + x == 500 || ystartingPosition + x == 0
        
        
        
    }
    
}
