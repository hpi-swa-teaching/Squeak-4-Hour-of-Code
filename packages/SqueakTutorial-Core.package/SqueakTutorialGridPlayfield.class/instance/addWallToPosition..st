as yet unclassified
addWallToPosition: aPosition

	| cellExtent wall |
	
	cellExtent := (self grid extent x) / (self grid cellAmount).
	
	wall := SqueakTutorialStoneWall new.
	
	wall morph: ImageMorph new.
	"wall morph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'wall.png') fullName) scaledToSize: cellExtent@cellExtent)."
	wall morph image: (SqueakTutorialImageCache imageWall scaledToSize: cellExtent@cellExtent).
	
	"(self grid cellAt: aPosition) isBlocked: true."
	(self grid cellAt: aPosition) addMorph: wall morph.
	(self grid cellAt: aPosition) visibleObject: wall.
	wall morph setProperty: #Wall toValue: 1.
	
	^ wall