```Smaltalk

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
			
			cercle := BlElement new
            geometry: BlCircleGeometry new;
            size: 25@25;
            background: Color white;
            position: 15@15;
            yourself.
		  rectangle addChild: cercle.
        space root addChild: rectangle.
    ].
].
space show.

```
