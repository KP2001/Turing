% House by NotNemesis
View.Set ("title:house.t; graphics: 500;500;position:center;center")

procedure draw_sky % Draws sky
    drawfillbox (0, 0, 500, 500, 52)
end draw_sky

procedure draw_grass % Draws grass
    drawfillbox (0, 0, 500, 100, 49)
end draw_grass

procedure draw_house % Draws house base
    drawfillbox (100, 100, 400, 400, 68)
end draw_house

procedure draw_roof % Draws roof from bottom to top
    drawfillbox (50, 400, 450, 420, 112)
    delay (200)
    drawfillbox (70, 420, 430, 440, 112)
    delay (200)
    drawfillbox (90, 440, 410, 460, 112)
    delay (200)
    drawfillbox (110, 460, 390, 480, 112)
end draw_roof

procedure draw_door % Draws door and handle
    drawfillbox (200, 100, 300, 250, 95)
    drawfilloval (280, 170, 10, 10, 14)
end draw_door

procedure draw_window % Draws left window
    drawfillbox (120, 300, 200, 390, 7)
    drawfillbox (125, 305, 195, 385, 100)
    drawfillbox (156, 305, 162, 390, 7)
    drawfillbox (120, 340, 200, 345, 7)

    drawfillbox (300, 300, 380, 390, 7) % Draws right window
    drawfillbox (305, 305, 375, 385, 100)
    drawfillbox (340, 305, 344, 390, 7)
    drawfillbox (300, 340, 380, 345, 7) %
end draw_window

procedure draw_tree % Draws tree
    drawfillbox (460, 80, 500, 380, 113)
    delay (200)
    drawfilloval (480, 420, 60, 90, 72)
    delay (200)
    drawfilloval (480, 330, 20, 20, 72)
    delay (200)
    drawfilloval (460, 335, 20, 20, 72)
    delay (200)
    drawfilloval (440, 350, 20, 20, 72)
    delay (200)
    drawfilloval (430, 370, 20, 20, 72)
    delay (200)
    drawfilloval (425, 390, 20, 20, 72)
    delay (200)
    drawfilloval (425, 410, 20, 20, 72)
    delay (200)
    drawfilloval (430, 440, 20, 20, 72)
    delay (200)
    drawfilloval (430, 460, 20, 20, 72)
    delay (200)
    drawfilloval (445, 480, 20, 20, 72)
end draw_tree

loop
    cls
    draw_sky
    delay (200)
    draw_grass
    delay (200)
    draw_house
    delay (200)
    draw_roof
    delay (200)
    draw_door
    delay (200)
    draw_window
    delay (200)
    draw_tree
    delay (5000)
end loop
