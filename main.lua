--[[
	Mockup
	main.lua

	A 2D platform mockup for LÖVE. 
	Written by Hoover.
]]

-- Modules
require("map")

-- Globals
gamePaused = false

-- Löve's General Callback Functions
function love.load()
	print("Loading...")
	love.graphics.setBackgroundColor(127, 127, 127)
	loadMap()
end

function love.focus(f)
	if not f then
		gamePaused = true
		print(love.graphics.getCaption().." lost focus!", 1, 1)
	else
		gamePaused = false
		print(love.graphics.getCaption().." gained focus!", 1, 1)
	end
end

function love.quit()
	print("Quitting...")
end

-- Love's Game Loop Callbacks
function love.update(dt)
	if gamePaused then return end

	-- Game tick code here.
	if love.keyboard.isDown("up")  then
		moveMap(0, -2)
	end
	if love.keyboard.isDown("down")  then
		moveMap(0, 2)
	end
	if love.keyboard.isDown("left")  then
		moveMap(-2, 0)
	end
	if love.keyboard.isDown("right")  then
		moveMap(2, 0)
	end

	updateMap()
end

function love.draw()
	-- Draw the game world.
	drawMap()

	love.graphics.print("FPS: "..love.timer.getFPS(), 15, 20)
end
