function love.load()
    x = 400
    y = 300
    isloggedcycle = 0
    speed = 2
end

function love.update()
    if love.window.isVisible() then
        if love.keyboard.isDown("s") then
            y = y + speed
        end
        if love.keyboard.isDown("w") then
            y = y - speed
        end
        if love.keyboard.isDown("up") then
            isloggedcycle = 20
        end
        if love.keyboard.isDown("a") then
            x = x - speed
        end
        if love.keyboard.isDown("d") then
            x = x + speed
        end
        if love.keyboard.isDown("escape") then
            love.window.close()
            love.event.quit()
        end
        if isloggedcycle >= 0 then
            y = y - 10
            isloggedcycle = isloggedcycle - 1
        end
        y = y + 5
        speed = speed + 0.002
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