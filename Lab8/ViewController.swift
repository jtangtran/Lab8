//
//  ViewController.swift
//  Lab8
//
//  Created by Jennifer on 2020-03-17.
//  Copyright © 2020 ics069. All rights reserved.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    let boxAnchor = try! Experience.loadBox()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the "Box" scene from the "Experience" Reality File
  
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
    }
    
    @IBAction func buttonPress(_ sender: Any) {
        boxAnchor.notifications.startNotification.post()
    }
    
}
