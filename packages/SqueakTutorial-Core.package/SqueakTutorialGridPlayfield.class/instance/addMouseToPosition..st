as yet unclassified
addMouseToPosition: aPosition

	| cellExtent mouse |
	
	cellExtent := (self grid extent x) / (self grid cellAmount).
	
	mouse := SqueakTutorialObjectMouse new.
	mouse playfield: self.
	
	mouse morph: ImageMorph new.
	"mouse mouseMorph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_down_grey.png') fullName) scaledToSize: cellExtent@cellExtent)."
	mouse morph image: (SqueakTutorialImageCache imageMouse scaledToSize: cellExtent@cellExtent).
	mouse direction: #down.
	mouse gridX: aPosition x.
	mouse gridY: aPosition y.
	mouse color: 'grey'.
	
	(self grid cellAt: aPosition) addMorph: mouse morph.
	mouse morph setProperty: #Mouse toValue: 1.
	
	^ mouse