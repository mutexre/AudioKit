//
//  moogLadderFilter.swift
//  AudioKit For iOS
//
//  Autogenerated by scripts by Aurelius Prochazka. Do not edit directly.
//  Copyright © 2015 AudioKit. All rights reserved.
//

import Foundation

extension AKOperation {

    /// Moog Ladder is an new digital implementation of the Moog ladder filter based
    /// on the work of Antti Huovilainen, described in the paper "Non-Linear Digital
    /// Implementation of the Moog Ladder Filter" (Proceedings of DaFX04, Univ of
    /// Napoli). This implementation is probably a more accurate digital
    /// representation of the original analogue filter.
    ///
    /// - returns: AKOperation
    /// - parameter input: Input audio signal
    /// - parameter cutoffFrequency: Filter cutoff frequency. (Default: 1000, Minimum: 12.0, Maximum: 20000.0)
    /// - parameter resonance: Resonance, generally < 1, but not limited to it. Higher than 1 resonance values might cause aliasing, analogue synths generally allow resonances to be above 1. (Default: 0.5, Minimum: 0.0, Maximum: 2.0)
     ///
    public func moogLadderFilter(
        cutoffFrequency cutoffFrequency: AKParameter = 1000,
        resonance: AKParameter = 0.5
        ) -> AKOperation {
            return AKOperation("(\(self) \(cutoffFrequency) \(resonance) moogladder)")
    }
}
