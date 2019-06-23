/* Base de datos*/

candidato(frank, 50).
candidato(claire, 52).
candidato(garret, 64).
candidato(peter, 26).
candidato(jackie, 38).
candidato(linda, 30).
candidato(catherine, 59).
candidato(heather, 50).
candidato(seth, 72).


perteneceAPartido(frank, rojo).
perteneceAPartido(claire, rojo).
perteneceAPartido(catherine, rojo).
perteneceAPartido(garret, azul).
perteneceAPartido(linda, azul).
perteneceAPartido(jackie, amarillo).
perteneceAPartido(seth, amarillo).
perteneceAPartido(heather, amarillo).
/*no se declara patido violeta porque no tiene gente*/


postulanteEn(buenosAires, azul).
postulanteEn(chaco, azul).
postulanteEn(tierraDelFuego, azul).
postulanteEn(sanLuis, azul).
postulanteEn(neuquen, azul).
postulanteEn(buenosAires,rojo).
postulanteEn(santaFe,rojo).
postulanteEn(cordoba,rojo).
postulanteEn(chubut,rojo).
postulanteEn(tierraDelFuego,rojo).
postulanteEn(sanLuis,rojo).
postulanteEn(chaco,amarillo).
postulanteEn(formosa,amarillo).
postulanteEn(tucuman,amarillo).
postulanteEn(salta,amarillo).
postulanteEn(santaCruz,amarillo).
postulanteEn(laPampa,amarillo).
postulanteEn(corrientes,amarillo).
postulanteEn(misiones,amarillo).
postulanteEn(buenosAires,amarillo).

habitantesEn(buenosAires, 15355000).
habitantesEn(chaco, 1143201).
habitantesEn(tierraDelFuego, 160720).
habitantesEn(sanLuis, 489255).
habitantesEn(neuquen, 637913).
habitantesEn(santaFe, 3397532).
habitantesEn(cordoba, 3567654).
habitantesEn(chubut, 577466).
habitantesEn(formosa, 527895).
habitantesEn(tucuman, 1687305).
habitantesEn(salta, 1333365).
habitantesEn(santaCruz, 273964).
habitantesEn(laPampa, 349299).
habitantesEn(corrientes, 992595).
habitantesEn(misiones, 1189446).

intencionDeVotoEn(buenosAires, rojo, 40).
intencionDeVotoEn(buenosAires, azul, 30).
intencionDeVotoEn(buenosAires, amarillo, 30).
intencionDeVotoEn(chaco, rojo, 50).
intencionDeVotoEn(chaco, azul, 20).
intencionDeVotoEn(chaco, amarillo, 0).
intencionDeVotoEn(tierraDelFuego, rojo, 40).
intencionDeVotoEn(tierraDelFuego, azul, 20).
intencionDeVotoEn(tierraDelFuego, amarillo, 10).
intencionDeVotoEn(sanLuis, rojo, 50).
intencionDeVotoEn(sanLuis, azul, 20).
intencionDeVotoEn(sanLuis, amarillo, 0).
intencionDeVotoEn(neuquen, rojo, 80).
intencionDeVotoEn(neuquen, azul, 10).
intencionDeVotoEn(neuquen, amarillo, 0).
intencionDeVotoEn(santaFe, rojo, 20).
intencionDeVotoEn(santaFe, azul, 40).
intencionDeVotoEn(santaFe, amarillo, 40).
intencionDeVotoEn(cordoba, rojo, 10).
intencionDeVotoEn(cordoba, azul, 60).
intencionDeVotoEn(cordoba, amarillo, 20).
intencionDeVotoEn(chubut, rojo, 15).
intencionDeVotoEn(chubut, azul, 15).
intencionDeVotoEn(chubut, amarillo, 15).
intencionDeVotoEn(formosa, rojo, 0).
intencionDeVotoEn(formosa, azul, 0).
intencionDeVotoEn(formosa, amarillo, 0).
intencionDeVotoEn(tucuman, rojo, 40).
intencionDeVotoEn(tucuman, azul, 40).
intencionDeVotoEn(tucuman, amarillo, 20).
intencionDeVotoEn(salta, rojo, 30).
intencionDeVotoEn(salta, azul, 60).
intencionDeVotoEn(salta, amarillo, 10).
intencionDeVotoEn(santaCruz, rojo, 10).
intencionDeVotoEn(santaCruz, azul, 20).
intencionDeVotoEn(santaCruz, amarillo, 30).
intencionDeVotoEn(laPampa, rojo, 25).
intencionDeVotoEn(laPampa, azul, 25).
intencionDeVotoEn(laPampa, amarillo, 40).
intencionDeVotoEn(corrientes, rojo, 30).
intencionDeVotoEn(corrientes, azul, 30).
intencionDeVotoEn(corrientes, amarillo, 10).
intencionDeVotoEn(misiones, rojo, 90).
intencionDeVotoEn(misiones, azul, 0).
intencionDeVotoEn(misiones, amarillo, 0).


promete(azul, edilicio(hospital, 1000)).
promete(azul, edilicio(jardin, 100)).
promete(azul, edilicio(escuela, 5)).
promete(amarillo, edilicio(hospital, 100)).
promete(amarillo, edilicio(universidad, 1)).
promete(amarillo, edilicio(comisaria, 200)).
promete(rojo, nuevosPuestosDeTrabajo(800000)).
promete(amarillo, nuevosPuestosDeTrabajo(10000)).
promete(azul, inflacion(2,4)).
promete(amarillo, inflacion(1,15)).
promete(rojo, inflacion(10,30)).



/*------------------------------------------------------------------------------------------*/
esMuyHabitada(Provincia):-	habitantesEn(Provincia,Poblacion),
							Poblacion > 1000000.

compitenVarios(Provincia):- findall(Partido,postulanteEn(Provincia, Partido),Partidos),
							length(Partidos, CantidadPartidos),
							CantidadPartidos >1.
						
esPicante(Provincia):-		esMuyHabitada(Provincia),
							compitenVarios(Provincia).
							
mismoPartido(Candidato1, Candidato2, Partido):-		perteneceAPartido(Candidato1, Partido),
													perteneceAPartido(Candidato2, Partido),
													Candidato1 \= Candidato2.

partidoGanaA(PartidoGanador, PartidoPerdedor, Provincia):-	intencionDeVotoEn(Provincia, PartidoGanador, IntencionGanador), 
															intencionDeVotoEn(Provincia, PartidoPerdedor, IntencionPerdedor),
															IntencionGanador >= IntencionPerdedor.
												
candidatoEnProvincia(Candidato, Provincia, Partido):-	perteneceAPartido(Candidato, Partido), 
														postulanteEn(Provincia, Partido).
															
leGanaA(Candidato1, Candidato2, Provincia) :- 	mismoPartido(Candidato1, Candidato2, Partido),
												postulanteEn(Provincia,Partido).
	
leGanaA(Candidato1, Candidato2, Provincia) :-	candidatoEnProvincia(Candidato1, Provincia, Partido1),
												candidatoEnProvincia(Candidato2, Provincia, Partido2),
												partidoGanaA(Partido1, Partido2, Provincia).
												

esMasJoven(Candidato1,Candidato2):- candidato(Candidato1,Edad1),
									candidato(Candidato2,Edad2),
									Edad1 =< Edad2.



elMasJovenDePartido(Partido, Candidato):-	perteneceAPartido(Candidato, Partido),
											forall(perteneceAPartido(UnCandidato, Partido),
											esMasJoven(Candidato, UnCandidato)).



elGranCandidato(Candidato):-	elMasJovenDePartido(Partido, Candidato),
								ganaEnTodasPcias(Partido).

/*no se como hacer andar esto de abajo bien, si pudiese se me resuelve todo creo yo*/
ganadorEnProvincia(Provincia, PartidoGanador):- findall(Intencion, intencionDeVotoEn(Provincia, _, Intencion), Intenciones),
												intencionDeVotoEn(Provincia, PartidoGanador, IntencionGanador),
												max_member(Intenciones, IntencionGanador).

ganaEnTodasPcias(Partido):- forall(postulanteEn(Provincia,Partido),
							ganadorEnProvincia(Provincia, Partido)).
							
								
ajusteConsultora(Partido, Provincia, VotosReales):- partidoGanaA(Partido,_,Provincia),
													intencionDeVotoEn(Provincia, Partido, Intencion),
													VotosReales is Intencion - 20.
ajusteConsultora(Partido, Provincia, VotosReales):- intencionDeVotoEn(Provincia, Partido, Intencion),
													VotosReales is Intencion + 5.

influenciaDePromesa(inflacion(CotaInferior,CotaSuperior), Variacion):- Variacion is (0-(CotaInferior + CotaSuperior)/2).
influenciaDePromesa(nuevosPuestosDeTrabajo(PuestosNuevos), Variacion):- PuestosNuevos > 50000, Variacion is 3.
influenciaDePromesa(nuevosPuestosDeTrabajo(_), 0).
influenciaDePromesa(edilicio(hospital, _), 2).
influenciaDePromesa(edilicio(jardin, Cantidad), Variacion):-    Variacion is Cantidad * 0.1.
influenciaDePromesa(edilicio(escuela, Cantidad), Variacion):-    Variacion is Cantidad * 0.1.
influenciaDePromesa(edilicio(comisaria, 200), 2).
influenciaDePromesa(edilicio(universidad, _), 0).

/* pedro, este "or" es asi?  quiero decirle que no sea ningun caso anterior para que no entre dos veces cuando sea, por ejemplo, hospital, porque me afecta a otros
resultados que necesitan tomar todas las promesas*/ 

influenciaDePromesa(edilicio(Edificio, _), -1):-	Edificio \= hospital,
													Edificio \= jardin,
													Edificio \= escuela,
													Edificio \= comisaria,
													Edificio \= universidad.

variacionPromesaPartido(Partido, Promesa, Variacion):-	promete(Partido, Promesa),
														influenciaDePromesa(Promesa, Variacion).
														
/* este no me queda completamente inversible, que asume que es por el findall, pero aclaro por las dudas, en este caso es solamente inversible con el segundo argumento*/
promedioDeCrecimiento(Partido, VariacionTotal):-	findall(Variacion, variacionPromesaPartido(Partido,_, Variacion), Variaciones),
													sumlist(Variaciones, VariacionTotal).


 