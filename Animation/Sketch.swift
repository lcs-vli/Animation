import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    
    let xstartingPosition = Int(random(from: 10, to: 490))
    let ystartingPosition = Int(random(from: 10, to: 490))
    
    let white = Color(hue:0, saturation: 0, brightness: 100, alpha: 100)
    let black = Color(hue:0, saturation: 0, brightness: 0, alpha: 100)
    
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
        x += 10
        
        canvas.fillColor = black
        
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(at: Point(x: xstartingPosition + x, y: ystartingPosition + x), width: 50, height: 50)
        
        canvas.drawShapesWithBorders = false
        
        canvas.fillColor = white
        
        canvas.drawRectangle(at: Point(x: xstartingPosition + x - 25, y: ystartingPosition + x - 25), width: 50, height: 50)
        
        
        
    }
    
}
