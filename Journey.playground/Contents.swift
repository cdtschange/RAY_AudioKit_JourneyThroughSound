//: Playground - noun: a place where people can play

import AudioKit

let oscillator = AKOscillator()

AudioKit.output = oscillator
AudioKit.start()

oscillator.start()

sleep(10)