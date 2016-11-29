//: [Previous](@previous)

import AudioKit
import PlaygroundSupport

let oscillator = AKOscillator()

let envelope = AKAmplitudeEnvelope(oscillator)
envelope.attackDuration = 0.01
envelope.decayDuration = 0.1
envelope.sustainLevel = 0.1
envelope.releaseDuration = 0.3

AudioKit.output = envelope
AudioKit.start()

oscillator.start()

AKPlaygroundLoop(every: 0.5) {
    if (envelope.isStarted) {
        envelope.stop()
    } else {
        envelope.start()
    }
}

PlaygroundPage.current.needsIndefiniteExecution = true