display.setDefault( "background", 1/255, 55/255, 142/255 )

responseText = display.newText( "What Movies Can You See? ", 160, 150, native.systemFont, 20 )
responseText:setFillColor( 255/255, 255/255, 255/255 )

display.newText ( "Enter Your Age Here: ", 160, 350, native.systemFont, 20 )

local image = display.newImageRect( "Assets/movie.png", 200, 130 )
image.x = 160
image.y = 50

ageField = native.newTextField( display.contentCenterX, display.contentCenterY + 150, 225, 40 )
ageField.id = "Age textField"

local calculateButton = display.newImageRect( "Assets/enterbutton.png", 200, 100 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"

local function calculateButtonTouch( event )

local ageField = tonumber(ageField.text)

if ageField >= 17 then
 
    responseText.text = "You can see R rated movies alone"

else if ageField >= 13 then
	responseText.text = "You can see PG 13 movies alone"

else
	responseText.text = "You can see G rated movies alone"
end

end

end

calculateButton:addEventListener( "touch", calculateButtonTouch )