function love.load()
    x = 400
    y = 300
end

function love.update()
    if love.window.isVisible() then
        if love.keyboard.isDown("s") then
            y = y + 2
        end
        if love.keyboard.isDown("w") then
            y = y - 2
        end
        if love.keyboard.isDown("a") then
            x = x - 2
        end
        if love.keyboard.isDown("d") then
            x = x + 2
        end
    end
end

function love.draw()
    red = 0/255
    green = 153/255
    blue = 204/255
    alpha = 100/100
    love.graphics.setBackgroundColor( red, green, blue, alpha)
    love.graphics.print("Hello World", x, y)
end