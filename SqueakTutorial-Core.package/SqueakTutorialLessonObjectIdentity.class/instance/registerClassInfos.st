as yet unclassified
registerClassInfos

	self addMessageToClass: 'mouse'
		withName: 'moveRight'
		withInfo: ('moveRight' , Character cr , Character cr , '"Moves the mouse one cell to the right."').
		
	self addMessageToClass: 'mouse'
		withName: 'moveLeft'
		withInfo: ('"moveLeft"' , Character cr , Character cr , '"Moves the mouse one cell to the left."').
		
	self addMessageToClass: 'mouse'
		withName: 'moveDown'
		withInfo: ('"moveDown"' , Character cr , Character cr , '"Moves the mouse one cell to the bottom."').
		
	self addMessageToClass: 'mouse'
		withName: 'moveUp'
		withInfo: ('"moveUp"' , Character cr , Character cr , '"Moves the mouse one cell to top."').
		
	self addMessageToClass: 'default'
		withName: 'cloneMouse'
		withInfo: ('"cloneMouse"' , Character cr , Character cr , '"Clone the mouse and save it as mouse2."').