% Draw.Mario by NotNemesis
View.Set ("graphics:240;320;position:center;center; nobuttonbar")

procedure draw_shoe
drawfillbox (0, 0, 80, 20, 114)
drawfillbox (20, 20, 80, 40, 114)
drawfillbox (240, 0, 160, 20, 114)
drawfillbox (220, 20, 160, 40, 114)
end draw_shoe

procedure draw_pants
drawfillbox (40, 40, 100, 80, 9)
drawfillbox (140, 40, 200, 80, 9)
drawfillbox (60, 60, 200, 80, 9)
drawfillbox (60, 80, 180, 120, 9)
drawfillbox (80, 120, 160, 180, 9)
end draw_pants 

procedure draw_hand
drawfillbox (0, 60, 40, 120, 66)
drawfillbox (200, 60, 240, 120, 66)
drawfillbox (40, 80, 60, 100, 66)
drawfillbox (180, 80, 200, 100, 66)
end draw_hand

procedure draw_buttons
drawfillbox (80, 100, 100, 120, 14)
drawfillbox (160, 100, 140, 120, 14)
end draw_buttons

procedure draw_shirt1
drawfillbox (40, 120, 200, 180, 12)
drawfillbox (40, 100, 60, 120, 12)
drawfillbox (180, 100, 200, 120, 12)
drawfillbox (20, 120, 40, 160, 12)
drawfillbox (200, 120, 220, 160, 12)
drawfillbox (0, 120, 20, 140, 12)
drawfillbox (220, 120, 240, 140, 12)
end draw_shirt1

procedure draw_shirt2
drawfillbox (100, 140, 140, 180, 12)
end draw_shirt2

procedure draw_face
drawfillbox (60, 180, 180, 280, 66)
drawfillbox (40, 220, 60, 260, 66)
drawfillbox (180, 220, 220, 260, 66)
drawfillbox (220, 220, 240, 240, 66)
end draw_face

procedure draw_hat
drawfillbox (40, 280, 220, 300, 12)
drawfillbox (60, 300, 160, 320, 12)
end draw_hat

procedure draw_hair
drawfillbox (20, 220, 40, 260, 114)
drawfillbox (40, 260, 100, 280, 114)
drawfillbox (60, 220, 80, 280, 114)
drawfillbox (40, 200, 60, 220, 114)
drawfillbox (80, 220, 100, 240, 114)
end draw_hair

procedure draw_eye
drawfillbox (140, 240, 160, 280, 7)
drawfillbox (140, 200, 220, 220, 7)
drawfillbox (160, 220, 180, 240, 7)
end draw_eye

loop
cls
draw_shoe
delay (500)
draw_hand
delay (500)
draw_shirt1
delay (500)
draw_pants
delay (500)
draw_buttons
delay (500)
draw_shirt2
delay (500)
draw_face
delay (500)
draw_hat
delay (500)
draw_hair
delay (500)
draw_eye
delay (5000)
end loop
