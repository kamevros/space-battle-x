# Picchiaduro tra due navicelle

### Tipologie di navicelle

- **SpaceX 2099**
	- HP: 15	Hit points
	- EP: 20	Energy points
	- Movimento:	3 EP 	Spostamento sul piano ad ogni "step"
	- Attacco		2 EP	Energia base del colpo
	- Deflettore	2 EP	Possibilità che il colpo ricevuto non vada a buon fine (da 0 a 5)
------------
- 	**Tough Thug**
	- 		HP			20	Hit points
	- 		EP			10	Energy points
	- 		Movimento	1	Spostamento sul piano ad ogni "step"
	- 		Attacco		3	Energia base del colpo
	- 		Deflettore	1	Possibilità che il colpo ricevuto non vada a buon fine (da 0 a 5)
------------
- ** Black Fang v2**
	- HP: 10	Hit points
	- EP			25	Energy points
	- Movimento	4	Spostamento sul piano ad ogni "step"
	- Attacco		1	Energia base del colpo
	- Deflettore	3	Possibilità che il colpo ricevuto non vada a buon fine (da 0 a 5)
------------
- **Roadster**
	- 		HP			15	Hit points
	- 		EP			15	Energy points
	- 		Movimento	5	Spostamento sul piano ad ogni "step"
	- 		Attacco		2	Energia base del colpo
	- 		Deflettore	2	Possibilità che il colpo ricevuto non vada a buon fine (da 0 a 5)
------------
- 	**Hellraiser**
	- 		HP			20	Hit points
	- 		EP			20	Energy points
	- 		Movimento	2	Spostamento sul piano ad ogni "step"
	- 		Attacco		5	Energia base del colpo
	- 		Deflettore	0	Possibilità che il colpo ricevuto non vada a buon fine (da 0 a 5)


Ogni secondo le navicelle recuperano 1 EP

### Quattro tasti
Movimento sul piano cartesiano
Nel caso si superi la posizione X dell'avversario le navicelle si "flippano"

### Due tasti
SPARO
SPECIAL

Cliccando il tasto di SPARO
	Si spara un colpo
Tenendo premuto il tasto di SPARO
	Si spara un colpo ad una cadenza regolare

Quando un colpo impatta con l'avversario va calcolato un valore random da 0 a 5
Se questo valore è inferiore al valore di Deflettore della navicella colpita il colpo non ha effetto
Se questo valore è superiore o uguare al valore di Deflettore della navicella colpita il colpo ha effetto e causa una perdita di HP della navicella avversaria pari al valore di Attacco della navicella attaccante

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
