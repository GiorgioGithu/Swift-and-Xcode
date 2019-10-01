//
//  ViewController.swift
//  RoboMan
//
//  Created by Gio on 9/22/19.
//  Copyright © 2019 Jorge. All rights reserved.
//

import UIKit
import RealityKit

 var roboAnchor:RoboMan.RoboMotion!

class ViewController: UIViewController {
    
    var robotAnchor:RoboMan.RoboMotion!
    
    @IBOutlet var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        robotAnchor = try! RoboMan.loadRoboMotion()
        robotAnchor.generateCollisionShapes(recursive: true)
        
        arView.scene.anchors.append(robotAnchor)
     
    }
    
    @IBAction func startExperience(_ sender: UIButton) {
    
        robotAnchor.notifications.roboStart.post()  
    }
}
