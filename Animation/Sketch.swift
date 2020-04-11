import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var x1: Int
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 250
        x1 = 250
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        //change position
        x += 1
        x1 -= 1
        
        // Draw an ellipse in the middle of the canvas
        
        // Change color to red
        canvas.fillColor = Color(hue: 0, saturation: 100, brightness: 75, alpha: 1000)
        //top right
        canvas.drawRectangle(at: Point(x: x, y: x), width: 50, height: 50)
        
        // Change color to yellow
        canvas.fillColor = Color(hue: 100, saturation: 100, brightness: 75, alpha: 1000)
        //botom left
        canvas.drawRectangle(at: Point(x: x1-40, y: x1-40), width: 50, height: 50)
        
        // Change color to blue
        canvas.fillColor = Color(hue: 240, saturation: 100, brightness: 75, alpha: 1000)
        //bottom right
        canvas.drawRectangle(at: Point(x: x, y: x1-40), width: 50, height: 50)
        
        // Change color to green
        canvas.fillColor = Color(hue: 120, saturation: 100, brightness: 75, alpha: 1000)
        //top left
        canvas.drawRectangle(at: Point(x: x1-40, y: x), width: 50, height: 50)
    }
    
}
