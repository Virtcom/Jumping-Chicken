function love.load()
    x = 400
    y = 300
end

function love.update()
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

function love.draw()
    love.graphics.print("Hello World", x, y)
end