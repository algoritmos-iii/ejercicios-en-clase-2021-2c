!classDefinition: #DetectorDeMeteoritos category: 'PracticaPolimorfismoDespuesDeAplicarAlgoritmo'!
Object subclass: #DetectorDeMeteoritos
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PracticaPolimorfismoDespuesDeAplicarAlgoritmo'!

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


!DetectorDeMeteoritos methodsFor: 'public' stamp: 'JS 10/28/2021 17:44:45'!
evitarDestruccionDeLaTierra

	| poligono areaDelPoligono |
	
	"50 lineas de codigo super importante"
	
	poligono := self poligonoDetectado.
	
	areaDelPoligono := poligono area.
	
	"500 lineas más de codigo super importante"
	
	self algoritmoSuperSecretoCon: areaDelPoligono.! !


!classDefinition: #Poligono category: 'PracticaPolimorfismoDespuesDeAplicarAlgoritmo'!
Object subclass: #Poligono
	instanceVariableNames: 'tipo base altura'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PracticaPolimorfismoDespuesDeAplicarAlgoritmo'!

!Poligono methodsFor: 'accesing' stamp: 'JS 10/17/2021 23:58:41'!
altura

	^altura! !

!Poligono methodsFor: 'accesing' stamp: 'JS 10/28/2021 17:42:47'!
area

	self subclassResponsibility! !

!Poligono methodsFor: 'accesing' stamp: 'JS 10/17/2021 23:58:57'!
base

	^base! !

!Poligono methodsFor: 'accesing' stamp: 'JS 10/17/2021 23:59:03'!
tipo

	^tipo! !


!classDefinition: #Cuadrado category: 'PracticaPolimorfismoDespuesDeAplicarAlgoritmo'!
Poligono subclass: #Cuadrado
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PracticaPolimorfismoDespuesDeAplicarAlgoritmo'!

!Cuadrado methodsFor: 'as yet unclassified' stamp: 'JS 10/28/2021 17:43:26'!
area

	(self base > 10000 * meter) ifTrue: [ self error: 'Peligro!! Cuadrado demasiado grande' ].
	^self base * self base ! !


!classDefinition: #Rectangulo category: 'PracticaPolimorfismoDespuesDeAplicarAlgoritmo'!
Poligono subclass: #Rectangulo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PracticaPolimorfismoDespuesDeAplicarAlgoritmo'!

!Rectangulo methodsFor: 'as yet unclassified' stamp: 'JS 10/28/2021 17:43:53'!
area

	^self base * self altura! !


!classDefinition: #Triangulo category: 'PracticaPolimorfismoDespuesDeAplicarAlgoritmo'!
Poligono subclass: #Triangulo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PracticaPolimorfismoDespuesDeAplicarAlgoritmo'!

!Triangulo methodsFor: 'as yet unclassified' stamp: 'JS 10/28/2021 17:44:13'!
area

	^(self base * self altura) / 2! !
