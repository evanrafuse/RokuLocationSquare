To use this, just put the locationSquare folder in your components folder, and copy and paste this code into your main scene brightscript file at the end of your init function:

' Check positioning
    m.locationSquare = m.top.CreateChild("LocationSquare")
    m.locationSquare.SetFocus(true)