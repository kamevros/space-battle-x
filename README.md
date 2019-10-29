# <NAME> 
Picchiaduro tra due navicelle

## ATTORI
### Navicella
- HP:			Unità di danno che la navicella può subire prima del KO.
- EP: 			Riserva massima di energia che la navicella può utilizzare per SHOOT o SPECIAL. Si ricarica di un punto al secondo
- MOVEMENT:		Delta di spostamento sul piano (x, y) ad ogni update della posizione se il tasto di movimento relativo è premuto.
- ATTACK:		Costo in EP dello SHOOT/Danno inferto alla collisione con la navicella avversaria.
- DEFLECTOR:	Soglia di controllo per valutare HIT/MISS del singolo SHOOT.

### Navicelle
- **SpaceX 2099**
	- HP:		 	15
	- EP: 			20
	- MOVEMENT:		3
	- ATTACK:		2
	- DEFLECTOR:	2
- **Tough Thug**
	- HP:		 	20
	- EP: 			10
	- MOVEMENT:		1
	- ATTACK:		3
	- DEFLECTOR:	2
- **Black Fang v2**
	- HP:		 	10
	- EP: 			25
	- MOVEMENT:		4
	- ATTACK:		1
	- DEFLECTOR:	3
- **Roadster**
	- HP:			15
	- EP:			15
	- MOVEMENT:		5
	- ATTACK:		2
	- DEFLECTOR:	2
- **Hellraiser**
	- HP:			20
	- EP:			20
	- MOVEMENT:		2
	- ATTACK:		5
	- DEFLECTOR:	1

## GAMEPLAY

### Movimento
Le navicelle si spostano sul piano cartesiano in una visuale 2D laterale
Nel caso si superi la posizione X dell'avversario le navicelle si "flippano" in modo da avere i due avversari sempre direzionati uno contro l'altro

### Controllo
- **Tasti direzionali**:	Danno la possibilità di variare X e Y sul piano cartesiano
- **SPARO**:				Da la possibilità di eseguire uno SHOOT
							Tenendo premuto il tasto verrà eseguito uno SHOOT a tempo regolare
- **SPECIAL**:				Da la possibilità di eseguire una SPECIAL

### Azioni
- **SHOOT**:	Creazione di un colpo base.
				Se la navicella ha EP maggiori o uguali al suo valore di ATTACK, allora sottrae ATTACK dagli EP della navicella e setta la variabile DAMAGE del colpo base uguale al valore di ATTACK della navicella
				Quando il colpo base impatta con l'avversario va calcolato un valore random da 0 a 5.
				Se questo valore è inferiore al valore di Deflettore della navicella colpita il colpo non ha effetto.
				Se questo valore è superiore o uguare al valore di Deflettore della navicella colpita il colpo ha effetto e causa una perdita di HP della navicella avversaria pari al valore di DAMAGE del colpo base

-**SPECIAL**:	Creazione di una combo.

### COMBO

Le combo sono comuni a entrambi i giocatori
Sono rappresentate da slot comuni al centro dello schermo in basso
Le combo una volta usate hanno un cooldown
Le combo si attivano facendo movimenti (lunghi o corti) e cliccando poi il tasto SPECIAL

AVANTI CORTO - AVANTI CORTO
	Costo x3 EP
	Sparo triplo
		3 colpi normali che vanno a -20°, 0° e +20° rispetto alla posizione del player
		Ogni colpo fa 1x danno
	
GIU LUNGO - GIU LUNGO
	Costo x2 EP
	Siluri terra aria
		2 siluri partono dalla navicella verso il basso, una volta a terra percorrono lo schermo in direzione dell'avversario e una volta sotto all'avversario partono verso l'alto
		Ogni siluro fa 2x danno
		
INDIETRO LUNGO 
	Costo x4 EP
	Fascio laser
		Un fascio laser alto metà schermo e posizionato centralmente rispetto alla navicella che lo ha evocato
		Il fascio laser fa 4x danno

AVANTI CORTO - SU CORTO - INDIETRO CORTO - GIU CORTO
	Costo x2 EP
	Sventagliata
		5 colpi normali che vanno a -30°, -15°, 0°, +15° e +30° rispetto alla posizione del player
		Ogni colpo fa 1x danno
