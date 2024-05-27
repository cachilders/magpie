- ~~In~~
  - ~~MIDI~~
  - ~~Crow~~
- Out
  - MIDI
  - Crow
  - NB
- Internal LFO
  - Consider 16 LFOs for MIDI + LFO for crow
  - Consider LFOs being parametric and available for external modulation
- Record MIDI events
  - On events
  - Off events
  - IDK what's different here for MPE, but probably below the line
- Echo MIDI events on fixed interval
- Echo CV gate on fixed interval
  - v/oct probably uses delay as slew time on delay channel
- Couple delay interval to LFO freq (some formula based on beat clock and sample freq)
- Couple velocity LFO amplitude
- Expand Midi
  - Allow instantiation of all midi devices
  - Allow parameter enable disable of any midi device
  - Allow echo routing (Midi to CV, CV to CV + Midi, Midi 1 to Midi 3 + 4, etc)
---
- Consider parameter to replace velocity change with scale degree changes?
- Other echo variations