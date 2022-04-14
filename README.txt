I built this because I was getting annoyed finding specific coordinates to move components around in SceneGraph/BrightScript. This is an easy way to get them when you are positioning things in the interface.

To use this, just put the locationSquare folder in your components folder, and copy and paste this code into your main scene brightscript file (or wherever you are trying to find a relative position) at the end of your init function:

' Check positioning
m.locationSquare = m.top.CreateChild("LocationSquare")
m.locationSquare.SetFocus(true)
