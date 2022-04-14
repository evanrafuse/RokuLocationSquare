function init()
    ' SET THE STARTING POINT HERE
    m.top.translation = "[500, 500]"
    
    ? "Location Square ON"

    square = m.top.CreateChild("Rectangle")
    square.width = "100"
    square.height = "100"
    square.color = "0x880088FF"
    m.xLabel = m.top.CreateChild("Label")
    m.xLabel.text = "x=0"
    m.xLabel.translation = "[20,30]"
    m.yLabel = m.top.CreateChild("Label")
    m.yLabel.text = "y=0"
    m.yLabel.translation = "[20,50]"
end function

function onKeyEvent(key, press) as Boolean
    xPos = m.top.translation[0]
    yPos = m.top.translation[1]
    if key = "right"
        xPos = xPos + 1
    else if key = "left"
        xPos = xPos - 1
    else if key = "down"
        yPos = yPos + 1
    else if key = "up"
        yPos = yPos - 1
    end if
    m.top.translation = "[" + StrI(xPos) + "," + StrI(yPos) + "]"
    ? "Current Position: x-" + StrI(xPos) + " y-" + StrI(yPos)
    m.xLabel = "x=" + StrI(xPos)
    m.yLabel = "y=" + StrI(yPos)
  return false
end function