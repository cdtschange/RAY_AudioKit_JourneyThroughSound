//: [Previous](@previous)

import PlaygroundSupport
import AudioKit

let bank = AKOscillatorBank()
AudioKit.output = bank
AudioKit.start()

class PlaygroundView: AKPlaygroundView, AKKeyboardDelegate {
    override func setup() {
        let keyboard = AKKeyboardView(width: 440, height: 100)
        keyboard.delegate = self
//        keyboard.polyphonicMode = true
        addSubview(keyboard)
    }
    
    func noteOn(note: MIDINoteNumber) {
        bank.play(noteNumber: note, velocity: 80)
    }
    
    func noteOff(note: MIDINoteNumber) {
        bank.stop(noteNumber: note)
    }
}

PlaygroundPage.current.liveView = PlaygroundView()
PlaygroundPage.current.needsIndefiniteExecution = true