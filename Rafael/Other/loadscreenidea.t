%Loading screen idea
View.Set ("nobuttonbar")
loop
drawfillbox (0,0,20,20,7)
drawfillbox (0, 25, 20, 45, 29)
drawfillbox (25, 0, 45, 20, 29)
drawfillbox (25, 25, 45, 45, 29)
locatexy (50,10)
put "Loading"
delay (150)
cls
drawfillbox (0,0,20,20,29)
drawfillbox (0, 25, 20, 45, 7)
drawfillbox (25, 0, 45, 20, 29)
drawfillbox (25, 25, 45, 45, 29)
locatexy (50,10)
put "Loading."
delay (150)
cls
drawfillbox (0,0,20,20,29)
drawfillbox (0, 25, 20, 45, 29)
drawfillbox (25, 0, 45, 20, 29)
drawfillbox (25, 25, 45, 45, 7)
locatexy (50,10)
put "Loading.."
delay (150)
cls
drawfillbox (0,0,20,20,29)
drawfillbox (0, 25, 20, 45, 29)
drawfillbox (25, 0, 45, 20, 7)
drawfillbox (25, 25, 45, 45, 29)
locatexy (50,10)
put "Loading..."
delay (100)
cls
end loop
