//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Andrew Miller on 11/02/2018.
//  Copyright © 2018 Andrew Miller. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!

    var partyRocks = [PartyRock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = PartyRock(imageURL: "https://www.google.co.uk/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwiZ86-I49jZAhWqBcAKHROoCPAQjRx6BAgAEAU&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FRedfoo&psig=AOvVaw26o9oBOWHZO2D7d8FxwuPH&ust=1520462685636989", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/KQ6zr6kCPj8\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>", videoTitle: "Party Rock Anthem")
        let p2 = PartyRock(imageURL: "https://www.google.co.uk/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwiLooWg49jZAhVGPsAKHaRuDicQjRx6BAgAEAU&url=http%3A%2F%2Ftime.com%2F3578167%2Fliterally-i-cant-video-rapper-redfoo-defends%2F&psig=AOvVaw26o9oBOWHZO2D7d8FxwuPH&ust=1520462685636989", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/SkTt9k4Y-a8\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>", videoTitle: "Sorry For Party Rocking")
        let p3 = PartyRock(imageURL: "https://www.google.co.uk/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwiB4vCo49jZAhWNHsAKHYjNBLcQjRx6BAgAEAU&url=http%3A%2F%2Fwww.hbartproduction.com%2Fdetails-lmfao%2Bpour%2Bsoiree%2Bprivee%2Bou%2Bevenementiel%2Ba%2Bmonaco%2Bcannes%2Bst%2Btropez%2Bmarseille%2B-1250.html&psig=AOvVaw26o9oBOWHZO2D7d8FxwuPH&ust=1520462685636989", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/wyx6JDQCslE\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>", videoTitle: "Sexy And I Know It")
        let p4 = PartyRock(imageURL: "https://www.google.co.uk/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwjDrJmv49jZAhVTF8AKHWflCiUQjRx6BAgAEAU&url=http%3A%2F%2Fwww.contactmusic.com%2Fredfoo&psig=AOvVaw26o9oBOWHZO2D7d8FxwuPH&ust=1520462685636989", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/UA8rcLvS1BY\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>", videoTitle: "Champagne Showers")
        let p5 = PartyRock(imageURL: "https://www.google.co.uk/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwiO_Mq449jZAhVpDcAKHWQYBlAQjRx6BAgAEAU&url=http%3A%2F%2Fwww.notediscover.com%2Fsong%2Fredfoo-juicy-wiggle&psig=AOvVaw26o9oBOWHZO2D7d8FxwuPH&ust=1520462685636989", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/XNtTEibFvlQ\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>", videoTitle: "Shots")
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            
            let partyRock = partyRocks[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
            
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }

}

