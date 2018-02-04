//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Memet RIZA on 03/02/2018.
//  Copyright © 2018 Memet RIZA. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!

    @IBOutlet weak var nextBtn: BorderButton!
    @IBOutlet weak var mensBtn: BorderButton!
    @IBOutlet weak var womensBtn: BorderButton!
    @IBOutlet weak var coedBtn: BorderButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
        print(player.desiredLegue)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        mensBtn.backgroundColor = UIColor.purple
        womensBtn.backgroundColor = UIColor.black.withAlphaComponent(0.60)
        coedBtn.backgroundColor = UIColor.black.withAlphaComponent(0.60)
        selectLegue(legueType: "mens")
    }
    @IBAction func onWomensTapped(_ sender: Any) {
        womensBtn.backgroundColor = UIColor.purple
        mensBtn.backgroundColor = UIColor.black.withAlphaComponent(0.60)
        coedBtn.backgroundColor = UIColor.black.withAlphaComponent(0.60)
        selectLegue(legueType: "womens")
    }
    @IBAction func onCoedTapped(_ sender: Any) {
        coedBtn.backgroundColor = UIColor.purple
        mensBtn.backgroundColor = UIColor.black.withAlphaComponent(0.60)
        womensBtn.backgroundColor = UIColor.black.withAlphaComponent(0.60)
        selectLegue(legueType: "coed")
    }
    
    func selectLegue(legueType: String){
        player.desiredLegue = legueType
        nextBtn.isEnabled = true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue){
    }
}
