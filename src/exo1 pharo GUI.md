```Smaltalk

blueRectangle := BlElement new
	geometry: BlRectangleGeometry  new;
	size: 200 @ 100;
	background: Color random;
	yourself.
blueRectangle openInNewSpace.
redRectangle := BlElement new
	geometry: BlRectangleGeometry  new;
	size: 50 @ 50;
	background: Color random; 
	yourself.
blueRectangle addChild: redRectangle.
redRectangle position: 75@25. 

grille := BlElement new
	geometry: BlRectangleGeometry  new;
	size: 200 @ 100;
	background: Color white;
	yourself.
randomRectangle := BlElement new
	geometry: BlRectangleGeometry  new;
	size: 100 @ 100;
	background: Color random;
	yourself. 
	randomRectangle openInNewSpace.
	grille addChild: randomRectangle
	
	| space gridSize rectangleSize positionX positionY offset |

gridSize := 10.
rectangleSize := 50@50.  
positionX := 10.  
positionY := 10.  
offset := 5.   

space := BlSpace new.

1 to: gridSize do: [ :row |
    1 to: gridSize do: [ :col |
        | rectangle |
        rectangle := BlElement new
            geometry: BlRectangleGeometry new;
            size: rectangleSize;
            background: Color random;
            position: (positionX + ((rectangleSize x) * (col - 1)))
                      @ (positionY + ((rectangleSize y) * (row - 1)));
            yourself.
        space root addChild: rectangle.
    ].
].
```

space show.


'''
