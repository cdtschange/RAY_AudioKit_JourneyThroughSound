//: [Previous](@previous)

import AudioKit
import PlaygroundSupport

// 1. Create an oscillator
let oscillator = AKOscillator()

oscillator.frequency = 300
oscillator.amplitude = 0.5

// 2. Start the AudioKit 'engine'
AudioKit.output = oscillator

AudioKit.start()

// 3. Start the oscillator
oscillator.start()

PlaygroundPage.current.needsIndefiniteExecution = true

oscillator.rampTime = 0.2 //allows the oscillator to transition smoothly between property values
oscillator.frequency = 500
AKPlaygroundLoop(every: 0.5) {
    oscillator.frequency =
        oscillator.frequency == 500 ? 100 : 500
}