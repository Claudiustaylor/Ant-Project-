-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
-- hide the status bar
display.setStatusBar( display.HiddenStatusBar )

-- Get the display size
local screenW, screenH, halfW = display.actualContentWidth, display.actualContentHeight, display.contentCenterX

-- Load and place backgound on the screen
local background = display.newRect( display.screenOriginX, display.screenOriginY, screenW, screenH )
background.anchorX = 0 
background.anchorY = 0
background:setFillColor( 1, 1, .2 )

local sheetInfo = require("redant")

local myImageSheet = graphics.newImageSheet( "redant.png", sheetInfo:getSheet() )


-- sequences table
local sequences_walkingAnt = {
    -- consecutive frames sequence
    {
        name = "ant",
        start = 1,
        count = 15,
        time = 800,
        loopCount = 0,
        loopDirection = "forward"
    }
}

local circStartX = math.random(display.actualContentWidth - 40)
local circStartY = math.random(display.actualContentHeight - 10)

local circ = display.newCircle( circStartX, circStartY, 8 )
circ:setFillColor( 1,0,0)

local antStartX = math.random(display.actualContentWidth - 40)
local antStartY = math.random(display.actualContentHeight -10)



local ant = display.newSprite( myImageSheet , sequences_walkingAnt )

ant.x = antStartX -- width pos
ant.y = antStartY -- height pos
ant:scale(.7,.7)
ant:play()



print("Ant Coord: ".. antStartX .. "," .. antStartY)
print("Dot Coord: ".. circStartX .. "," .. circStartY)


xDistance = circStartX - ant.x;
yDistance = circStartY - ant.y;

angleToTurn = math.deg(math.atan2(yDistance, xDistance));

print("Rotate angle: " .. angleToTurn)

ant:rotate(angleToTurn + 90)



local function distanceBetween ( point1, point2 )

    local xfactor = point2.x-point1.x 
    local yfactor = point2.y-point1.y

    local distanceBetween = math.sqrt((xfactor*xfactor) + (yfactor*yfactor))

    return distanceBetween

end


local function calcObjRotation ( point1, point2 )

    local xPos = point1.x - point2.x;
    local yPos = point1.y - point2.y;

    local angleToTurn = math.deg(math.atan2(yPos, xPos));

    return angleToTurn

end




distLen = distanceBetween( circ, ant )


function listner2(obj)

	distLen = distanceBetween( circ, ant )
	transition.to( ant, { time=21*distLen, x=circ.x, y=circ.y, onComplete=listner1} )

end

function listner1(obj)

	circ.x = math.random(display.actualContentWidth - 40)
	circ.y = math.random(display.actualContentHeight -10)

	--xDistance = circ.x - ant.x;
	--yDistance = circ.y - ant.y;

	--angleToTurn = math.deg(math.atan2(yDistance, xDistance));

    angleToTurn = calcObjRotation ( circ, ant )

	delayRotate = 1800

	transition.to( obj, { rotation=angleToTurn+90, time=delayRotate, onComplete=listner2} )

	--distLen = distanceBetween( circ, obj )
	--transition.to( obj, { time=21*distLen, x=circ.x, y=circ.y, onComplete=listner1} )


	--ant:rotate(angleToTurn)

end



transition.to( ant, { time=21*distLen, x=circStartX, y=circStartY, onComplete=listner1} )
