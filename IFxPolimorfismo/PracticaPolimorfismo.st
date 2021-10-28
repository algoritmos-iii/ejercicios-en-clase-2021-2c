!classDefinition: #DetectorDeMeteoritos category: 'PracticaPolimorfismo'!
Object subclass: #DetectorDeMeteoritos
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PracticaPolimorfismo'!

!DetectorDeMeteoritos methodsFor: 'private' stamp: 'JS 10/18/2021 00:07:41'!
algoritmoSuperSecretoCon: areaDelPoligonoDetectado

	| poligono perimetroDelPoligono |

	"1000 lineas de codigo super super importante"
	
	poligono := self poligonoDetectado.
	
	(poligono tipo = #cuadrado) ifTrue: [ perimetroDelPoligono := poligono base * 4 ].
	
	(poligono tipo = #rectangulo) ifTrue: [ perimetroDelPoligono := (poligono base * 2) + (poligono altura * 2) ].
	
	(poligono tipo = #triangulo) ifTrue: [ self error: 'No sé como calcular esto, el mundo será destruido' ].
	
	"10000 lineas más de codigo super super importante"! !

!DetectorDeMeteoritos methodsFor: 'private' stamp: 'JS 10/17/2021 23:57:49'!
poligonoDetectado

	! !


!DetectorDeMeteoritos methodsFor: 'public' stamp: 'JS 10/18/2021 00:08:36'!
evitarDestruccionDeLaTierra

	| poligono areaDelPoligono |
	
	"50 lineas de codigo super importante"
	
	poligono := self poligonoDetectado.
	
	(poligono tipo = #cuadrado) ifTrue: [ 
		(poligono base > 10000 * meter) ifTrue: [ self error: 'Peligro!! Cuadrado demasiado grande' ].
		areaDelPoligono := poligono base * poligono base ].
	
	(poligono tipo = #rectangulo) ifTrue: [ areaDelPoligono := poligono base * poligono altura ].
	
	(poligono tipo = #triangulo) ifTrue: [ areaDelPoligono := (poligono base * poligono altura) / 2 ].
	
	
	"500 lineas más de codigo super importante"
	
	self algoritmoSuperSecretoCon: areaDelPoligono.! !


!classDefinition: #Poligono category: 'PracticaPolimorfismo'!
Object subclass: #Poligono
	instanceVariableNames: 'tipo base altura'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PracticaPolimorfismo'!

!Poligono methodsFor: 'accesing' stamp: 'JS 10/17/2021 23:58:41'!
altura

	^altura! !

!Poligono methodsFor: 'accesing' stamp: 'JS 10/17/2021 23:58:57'!
base

	^base! !

!Poligono methodsFor: 'accesing' stamp: 'JS 10/17/2021 23:59:03'!
tipo

	^tipo! !
