//
//  NaviViewController.swift
//  ShopLens
//
//  Created by Alex Ding on 11/9/17.
//  Copyright © 2017 Alex Ding. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class NaviViewController: UIViewController, ARSCNViewDelegate {
    
    @IBOutlet weak var sceneView: ARSCNView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        
        // Show statistics such as fps and timing information
        sceneView.showsStatistics = true
    
        
    
        let scene = SCNScene(named: "art.scnassets/ship.scn")!
        let arrow = scene.rootNode.childNodes.first
        arrow!.position = SCNVector3Make(0, -5, -10)
        arrow!.scale = SCNVector3Make(1, 1, 1)
        
        let position = SCNVector3Make(0, -1.5, -4)
        let scale = SCNVector3Make(1, 1, 1)
        let textNode = textIndicator(position: position, scale: scale)

        scene.rootNode.addChildNode(textNode)
        sceneView.scene = scene
    }
    
    func textIndicator(position: SCNVector3, scale: SCNVector3)->SCNNode{
        let text = SCNText(string: "50m", extrusionDepth: 0)
        text.firstMaterial?.diffuse.contents = UIColor.white
        text.font = UIFont(name: "Helvetica", size: 0.4)
        let textNode = SCNNode()
        textNode.position = position
        textNode.scale = scale
        textNode.geometry = text
        return textNode
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()
        
        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
    // MARK: - ARSCNViewDelegate
    
    /*
     // Override to create and configure nodes for anchors added to the view's session.
     func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
     let node = SCNNode()
     
     return node
     }
     */
    
    func session(_ session: ARSession, didFailWithError error: Error) {
        // Present an error message to the user
        
    }
    
    func sessionWasInterrupted(_ session: ARSession) {
        // Inform the user that the session has been interrupted, for example, by presenting an overlay
        
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        // Reset tracking and/or remove existing anchors if consistent tracking is required
        
    }
}
