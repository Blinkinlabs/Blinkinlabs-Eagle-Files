= Blinkinlabs Eagle support files

Here is the Eagle library containing all of our parts, and the CAM file for generating boards.

== CAM File

The CAM file is derived from Sparkfun's file, with some modifications to the silk layer and the addition of plated slot and vscore layers.

Here are the output layers:
GM1: Board outline (layer 20: Dimension)
GM2: Plated slot (layer 46: Milling)
GM3: Vscore (layer 102: Vscore)
GBL: Bottom copper (layers 16: Bottom, 17: Pads, 18: Vias)
GBO: Bottom silk (layers 22: bPlace, 26: bNames)
GBS: Bottom soldermask (layer 30: bStop)
GTL: Top copper (layers 1: Top, 17: Pads, 18: Vias)
GTO: Top silk (layers 21: tPlace, 25: tNames)
GTP: Top paste (layer 31: tCream)
GTS: Top soldermask (layer 29: tStop)
TXT: Excellion drill file (layers 44: Drills, 45: Holes)
