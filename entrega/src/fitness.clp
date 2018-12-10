;;;======================================================
;;;     Fitness Diagnostication System
;;;
;;;     This expert system diagnoses fitness exercices for Old People.
;;;
;;;     CLIPS Version 6.0
;;;
;;;     To execute, merely load, reset and run.
;;;======================================================

;;****************
;;* DEFCLASS *
;;****************

(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(multislot ex
		(type INSTANCE)
;+		(allowed-classes Exercici)
		(create-accessor read-write))
	(single-slot tdia7
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot n
		(type SYMBOL)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot dia2
		(type INSTANCE)
;+		(allowed-classes Exercici)
		(create-accessor read-write))
	(multislot dia3
		(type INSTANCE)
;+		(allowed-classes Exercici)
		(create-accessor read-write))
	(single-slot tdia1
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot dia4
		(type INSTANCE)
;+		(allowed-classes Exercici)
		(create-accessor read-write))
	(single-slot tipo
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot dia5
		(type INSTANCE)
;+		(allowed-classes Exercici)
		(create-accessor read-write))
	(single-slot tdia3
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot enf
		(type INSTANCE)
;+		(allowed-classes Enfermetat)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot dia6
		(type INSTANCE)
;+		(allowed-classes Exercici)
		(create-accessor read-write))
	(single-slot tdia2
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot dia7
		(type INSTANCE)
;+		(allowed-classes Exercici)
		(create-accessor read-write))
	(single-slot tdia5
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tdia4
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot dia1
		(type INSTANCE)
;+		(allowed-classes Exercici)
		(create-accessor read-write))
	(single-slot inten
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot level
		(type SYMBOL)
		(allowed-values low med high)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot description
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot ty
;+		(comment "Type")
		(type SYMBOL)
		(allowed-values cardio diabetes)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot duration
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot fitness_diagnose_Class21
		(type INSTANCE)
;+		(allowed-classes Enfermetat)
;+		(cardinality 0 1)
		(create-accessor read-write)))



(defclass Exercici
	(is-a USER)
	(role concrete)
	(single-slot inten
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot duration
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tipo
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot description
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))


(defclass Enfermetat
	(is-a USER)
	(role concrete)
	(single-slot n
		(type SYMBOL)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot dia1
		(type INSTANCE)
;+		(allowed-classes Exercici)
		(create-accessor read-write))
	(multislot dia2
		(type INSTANCE)
;+		(allowed-classes Exercici)
		(create-accessor read-write))
	(single-slot ty
;+		(comment "Type")
		(type SYMBOL)
		(allowed-values cardio diabetes)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot dia3
		(type INSTANCE)
;+		(allowed-classes Exercici)
		(create-accessor read-write))
	(multislot dia4
		(type INSTANCE)
;+		(allowed-classes Exercici)
		(create-accessor read-write))
	(multislot dia5
		(type INSTANCE)
;+		(allowed-classes Exercici)
		(create-accessor read-write))
	(single-slot level
		(type SYMBOL)
		(allowed-values low med high)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot dia6
		(type INSTANCE)
;+		(allowed-classes Exercici)
		(create-accessor read-write))
	(multislot dia7
		(type INSTANCE)
;+		(allowed-classes Exercici)
		(create-accessor read-write)))


(defclass Recomendacion
	(is-a USER)
	(role concrete)
	(single-slot enf
		(type INSTANCE)
;+		(allowed-classes Enfermetat)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Resultat
	(is-a USER)
	(role concrete)
	(multislot dia1
		(type INSTANCE)
;+		(allowed-classes Exercici)
		(create-accessor read-write))
	(single-slot tdia7
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot dia2
		(type INSTANCE)
;+		(allowed-classes Exercici)
		(create-accessor read-write))
	(multislot dia3
		(type INSTANCE)
;+		(allowed-classes Exercici)
		(create-accessor read-write))
	(single-slot tdia1
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot dia4
		(type INSTANCE)
;+		(allowed-classes Exercici)
		(create-accessor read-write))
	(multislot dia5
		(type INSTANCE)
;+		(allowed-classes Exercici)
		(create-accessor read-write))
	(single-slot tdia3
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot dia6
		(type INSTANCE)
;+		(allowed-classes Exercici)
		(create-accessor read-write))
	(single-slot tdia2
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot dia7
		(type INSTANCE)
;+		(allowed-classes Exercici)
		(create-accessor read-write))
	(single-slot tdia5
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tdia6
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tdia4
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

;;****************
;;* INSTANCES *
;;****************

(definstances instancies

([fitness_diagnose_Class30] of  Exercici

	(description "Caminar")
	(duration 20)
	(inten 7)
	(tipo "Caminar"))

([fitness_diagnose_Class31] of  Exercici

	(description "Paseo")
	(duration 30)
	(inten 7)
	(tipo "Pasear"))

([fitness_diagnose_Class32] of  Exercici

	(description "1\nColóquese de\npie, con los\nbrazos y codos\nextendidos y con\nlas palmas de las\nmanos apoyadas\nen la pared.")
	(duration 20)
	(inten 6)
	(tipo "Estiramiento de Pantorrilla"))

([fitness_diagnose_Class34] of  Exercici

	(description "1\nTúmbese de\nespaldas en el\nsuelo, “boca arri-\nba”, con las rodillas\nflexionadas y los\npies extendidos.\n2\nMantenga los\nhombros pega-\ndos al suelo con las\nrodillas dobladas y\njuntas.\n3\nBaje las rodillas\nlentamente sin")
	(duration 20)
	(inten 7)
	(tipo "Estiramiento de Cadera"))

([fitness_diagnose_Class35] of  Exercici

	(description "Nadar")
	(duration 30)
	(inten 8)
	(tipo "Nadar"))

([fitness_diagnose_Class36] of  Exercici

	(description "1\nSostenga la\ntoalla con\nuna mano.\n2\nLevante el\nbrazo de\nesa mano y\ndoble el codo,\npermitiendo\nque la toalla\nse deslice por\nla espalda.\n3\nAgarre el\nextremo\nde la toalla\nsituado en su\nespalda con\nla otra mano.")
	(duration 10)
	(inten 8)
	(tipo "Estiramiento de Triceps"))

([fitness_diagnose_Class37] of  Exercici

	(description "Pedalear")
	(duration 30)
	(inten 9)
	(tipo "Pedalear"))

([fitness_diagnose_Class38] of  Exercici

	(description "Subir i bajar escaleras.")
	(duration 10)
	(inten 10)
	(tipo "Subir escaleras"))

([fitness_diagnose_Class39] of  Exercici

	(description "1\nPóngase de pie,\ndetrás de una silla\ny agárrese con las\ndos manos al respal-\ndo.\n\n2\nMantenga recta\nla espalda y los\nhombros.\n3\nFlexionando las\ncaderas vaya\ninclinando el cuerpo\nhacia delante.\n\n4\nCuando la parte\nsuperior del cuer-\npo esté paralela al\nsuelo, notará un tirón,\nmanténgase en esta\nposición.\n\n5\nRepítalo de 3 a 5\nveces")
	(duration 5)
	(inten 8)
	(tipo "Estiramiento Tendones del Muslo"))

([fitness_diagnose_Class40] of  Exercici

	(description "8 a 15 Repeticiones, 2 series.")
	(duration 10)
	(inten 5)
	(tipo "Flexion de Cadera"))

([fitness_diagnose_Class41] of  Exercici

	(description "8 a 15 Repeticiones, 2 series.")
	(duration 10)
	(inten 7)
	(tipo "Levantamiento Lateral de Pierna"))

([fitness_diagnose_Class42] of  Exercici

	(description "8 a 15 Repeticiones, 2 series.")
	(duration 10)
	(inten 8)
	(tipo "Flexion Plantar"))

([fitness_diagnose_Class44] of  Exercici

	(description "Mientras se este orinando. Parar el flujo varias veces.")
	(duration 5)
	(inten 10)
	(tipo "Kegel"))

([fitness_diagnose_Class43] of  Enfermetat

	(dia1
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class31]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34])
	(dia3
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class31]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34])
	(dia5
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class31]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34])
	(level low)
	(n arritmia)
	(ty cardio))

([fitness_diagnose_Class45] of  Enfermetat

	(dia1
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class31]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34])
	(dia3
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class31]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34])
	(dia5
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class31]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34])
	(level low)
	(n coronaria)
	(ty cardio))

([fitness_diagnose_Class46] of  Enfermetat

	(dia1
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class31]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34])
	(dia3
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class31]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34])
	(dia5
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class31]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34])
	(level low)
	(n diabetes)
	(ty diabetes))

([fitness_diagnose_Class47] of  Enfermetat

	(dia1
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class31]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34])
	(dia3
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class31]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34])
	(dia5
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class31]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34])
	(level low)
	(n artrosis)
	(ty oseomuscular))

([fitness_diagnose_Class48] of  Enfermetat

	(dia1
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class31]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34])
	(dia3
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class31]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34])
	(dia5
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class31]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34])
	(level low)
	(n renal)
	(ty renal))

([fitness_diagnose_Class49] of  Enfermetat

	(dia1
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class31]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34])
	(dia3
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class31]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34])
	(dia5
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class31]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34])
	(level low)
	(n depresion)
	(ty depresion))

([fitness_diagnose_Class50] of  Enfermetat

	(dia1
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class31]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34])
	(dia3
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class31]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34])
	(dia5
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class31]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34])
	(level low)
	(n fragilidad)
	(ty fragilidad))


([fitness_diagnose_Class51] of  Enfermetat

	(dia1
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class35]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36])
	(dia2
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class35]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36])
	(dia4
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class35]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36])
	(dia5
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class35]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36])
	(level med)
	(n arritmia)
	(ty cardio))

([fitness_diagnose_Class52] of  Enfermetat

	(dia1
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class35]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36])
	(dia2
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class35]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36])
	(dia4
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class35]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36])
	(dia5
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class35]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36])
	(level med)
	(n coronaria)
	(ty cardio))

([fitness_diagnose_Class53] of  Enfermetat

	(dia1
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class35]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36])
	(dia2
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class35]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36])
	(dia4
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class35]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36])
	(dia5
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class35]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36])
	(level med)
	(n diabetes)
	(ty diabetes))

([fitness_diagnose_Class54] of  Enfermetat

	(dia1
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class35]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36])
	(dia2
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class35]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36])
	(dia4
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class35]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36])
	(dia5
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class35]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36])
	(level med)
	(n artrosis)
	(ty oseomuscular))

([fitness_diagnose_Class55] of  Enfermetat

	(dia1
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class35]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36])
	(dia2
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class35]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36])
	(dia4
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class35]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36])
	(dia5
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class35]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36])
	(level med)
	(n renal)
	(ty renal))

([fitness_diagnose_Class56] of  Enfermetat

	(dia1
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class35]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36])
	(dia2
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class35]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36])
	(dia4
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class35]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36])
	(dia5
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class35]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36])
	(level med)
	(n depresion)
	(ty depresion))

([fitness_diagnose_Class57] of  Enfermetat

	(dia1
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class35]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36])
	(dia2
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class35]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36])
	(dia4
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class35]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36])
	(dia5
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class35]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36])
	(level med)
	(n fragilidad)
	(ty fragilidad))

([fitness_diagnose_Class58] of  Enfermetat

	(dia1
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(dia2
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(dia3
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(dia4
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(dia5
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(level high)
	(n arritmia)
	(ty cardio))

([fitness_diagnose_Class59] of  Enfermetat

	(dia1
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(dia2
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(dia3
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(dia4
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(dia5
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(level high)
	(n coronaria)
	(ty cardio))

([fitness_diagnose_Class60] of  Enfermetat

	(dia1
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(dia2
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(dia3
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(dia4
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(dia5
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(level high)
	(n diabetes)
	(ty diabetes))

([fitness_diagnose_Class61] of  Enfermetat

	(dia1
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(dia2
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(dia3
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(dia4
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(dia5
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(level high)
	(n artrosis)
	(ty oseomuscular))
([fitness_diagnose_Class61] of  Enfermetat

	(dia1
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(dia2
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(dia3
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(dia4
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(dia5
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(level high)
	(n artrosis)
	(ty oseomuscular))

([fitness_diagnose_Class62] of  Enfermetat

	(dia1
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(dia2
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(dia3
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(dia4
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(dia5
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(level high)
	(n renal)
	(ty renal))

([fitness_diagnose_Class63] of  Enfermetat

	(dia1
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(dia2
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(dia3
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(dia4
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(dia5
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(level high)
	(n depresion)
	(ty depresion))

([fitness_diagnose_Class64] of  Enfermetat

	(dia1
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(dia2
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(dia3
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(dia4
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(dia5
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(level high)
	(n fragilidad)
	(ty fragilidad))

([fitness_diagnose_Class65] of  Enfermetat

	(dia1
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class31]
		[fitness_diagnose_Class40]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34])
	(dia3
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class31]
		[fitness_diagnose_Class40]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34])
	(dia5
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class31]
		[fitness_diagnose_Class40]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34])
	(level low)
	(n caidas)
	(ty caidas))

([fitness_diagnose_Class66] of  Enfermetat

	(dia1
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class31]
		[fitness_diagnose_Class40]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34])
	(dia3
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class31]
		[fitness_diagnose_Class40]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34])
	(dia5
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class31]
		[fitness_diagnose_Class40]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34])
	(level low)
	(n osteoporosis)
	(ty oseomuscular))

([fitness_diagnose_Class68] of  Enfermetat

	(dia1
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class35]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class40]
		[fitness_diagnose_Class41]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36])
	(dia2
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class35]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class40]
		[fitness_diagnose_Class41]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36])
	(dia4
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class35]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class40]
		[fitness_diagnose_Class41]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36])
	(dia5
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class35]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class40]
		[fitness_diagnose_Class41]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36])
	(level med)
	(n arritmia)
	(ty cardio))

([fitness_diagnose_Class69] of  Enfermetat

	(dia1
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class35]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class40]
		[fitness_diagnose_Class41]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36])
	(dia2
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class35]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class40]
		[fitness_diagnose_Class41]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36])
	(dia4
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class35]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class40]
		[fitness_diagnose_Class41]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36])
	(dia5
		[fitness_diagnose_Class30]
		[fitness_diagnose_Class35]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class40]
		[fitness_diagnose_Class41]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36])
	(level med)
	(n osteoporosis)
	(ty oseomuscular))

([fitness_diagnose_Class70] of  Enfermetat

	(dia1
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class40]
		[fitness_diagnose_Class41]
		[fitness_diagnose_Class42]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(dia2
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class40]
		[fitness_diagnose_Class41]
		[fitness_diagnose_Class42]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(dia3
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class40]
		[fitness_diagnose_Class41]
		[fitness_diagnose_Class42]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(dia4
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class40]
		[fitness_diagnose_Class41]
		[fitness_diagnose_Class42]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(dia5
		[fitness_diagnose_Class37]
		[fitness_diagnose_Class38]
		[fitness_diagnose_Class32]
		[fitness_diagnose_Class34]
		[fitness_diagnose_Class40]
		[fitness_diagnose_Class41]
		[fitness_diagnose_Class42]
		[fitness_diagnose_Class36]
		[fitness_diagnose_Class39])
	(level high)
	(n arritmia)
	(ty cardio))

([fitness_diagnose_Class71] of  Enfermetat

	(dia1
		[fitness_diagnose_Class40]
		[fitness_diagnose_Class41]
		[fitness_diagnose_Class42]
		[fitness_diagnose_Class44])
	(dia3
		[fitness_diagnose_Class40]
		[fitness_diagnose_Class41]
		[fitness_diagnose_Class42]
		[fitness_diagnose_Class44])
	(dia5
		[fitness_diagnose_Class40]
		[fitness_diagnose_Class41]
		[fitness_diagnose_Class42]
		[fitness_diagnose_Class44])
	(level low)
	(n incontinencia)
	(ty incontinencia))
)


;;****************
;;* DEFFUNCTIONS *
;;****************

(deffunction ask-question (?question $?allowed-values)
   (printout t ?question)
   (bind ?answer (read))
   (if (lexemep ?answer) 
       then (bind ?answer (lowcase ?answer)))
   (while (not (member ?answer ?allowed-values)) do
      (printout t ?question)
      (bind ?answer (read))
      (if (lexemep ?answer) 
          then (bind ?answer (lowcase ?answer))))
   ?answer)

(deffunction yes-or-no-p (?question)
   (bind ?response (ask-question ?question yes no y n))
   (if (or (eq ?response yes) (eq ?response y))
       then TRUE 
       else FALSE))

;;;***************
;;;* QUERY RULES *
;;;***************



;; MAIN MODULE

(defmodule MAIN (export ?ALL))

(defrule comienzo "MAIN"
	(initial-fact)
	=>
	(printout t crlf)
	(printout t "--------------------------------------------------------------" crlf)
	(printout t "------ Fitness Diagnose System                           -----" crlf)
	(printout t "--------------------------------------------------------------" crlf)
	(printout t crlf)
    (assert (init-exec))
    ; (focus info-recolection)
)

(defrule inicial ""
    (init-exec)
    =>
	(printout t "INIT EXECUTION" crlf)
    (focus info-recolection)
)

;; INFO RECOLECTION MODULE

(defmodule info-recolection
    (import MAIN ?ALL)
    (export ?ALL)
)

(defrule determine-cardiovascular-state ""
    (init-exec)
   (not (cardio sickness  ?))
   (not (result ?))
   =>
   (if (yes-or-no-p "Do you have a Cardiovascular Sickness (yes/no)? ") 
       then 
       (bind ?response
        (ask-question "Which of the following you have? (arritmia / coronaria)? "
            arritmia coronaria))
        (assert (cardio sickness ?response))
       else 
       (assert (cardio sickness none))))

(defrule determine-diabetes-state ""
    (init-exec)
   (not (diabetes sickness  ?))
   (not (result ?))
   =>
   (if (yes-or-no-p "Do you have a Diabetes (yes/no)? ") 
       then 
       (assert (diabetes sickness diabetes))
       else 
       (assert (diabetes sickness no))
   )
)

(defrule determine-oseomuscular-state ""
    (init-exec)
   (not (oseo sickness  ?))
   (not (result ?))
   =>
   (if (yes-or-no-p "Do you have a Oseomuscular Sickness (yes/no)? ") 
       then 
       (bind ?response
        (ask-question "Which of the following you have? (osteoporosis / artritis)? "
            osteoporosis artritis))
        (assert (oseo sickness ?response))
       else 
       (assert (oseo sickness none))))

(defrule determine-renal-state ""
    (init-exec)
   (not (renal sickness  ?))
   (not (result ?))
   =>
   (if (yes-or-no-p "Do you have Renal Insuficiency (yes/no)? ") 
       then 
       (assert (renal sickness renal))
       else 
       (assert (renal sickness no))
   )
)

(defrule determine-fragility-state ""
    (init-exec)
   (not (fragility sickness  ?))
   (not (result ?))
   =>
   (if (yes-or-no-p "Do you consider yourself fragile (yes/no)? ") 
       then 
       (assert (fragility sickness fragilidad))
       else 
       (assert (fragility sickness no))
   )
)

(defrule determine-incon-state ""
    (init-exec)
   (not (incon sickness  ?))
   (not (result ?))
   =>
   (if (yes-or-no-p "Do you have incontinency (yes/no)? ") 
       then 
       (assert (incon sickness incontinencia))
       else 
       (assert (incon sickness no))
   )
)

(defrule determine-falling-state ""
    (init-exec)
   (not (fall sickness  ?))
   (not (result ?))
   =>
   (if (yes-or-no-p "Do you fall over often (yes/no)? ") 
       then 
       (assert (fall sickness caidas))
       else 
       (assert (fall sickness no))
   )
)

(defrule determine-depresion-state ""
    (init-exec)
   (not (depresion sickness  ?))
   (not (result ?))
   =>
   (if (yes-or-no-p "Do you have Depresion (yes/no)? ") 
       then 
       (assert (depresion sickness depresion))
       else 
       (assert (depresion sickness no))
   )
)

(defrule determine-level-state ""
    (init-exec)
   (not (level  ?))
   (not (result ?))
   =>
   (bind ?response
    (ask-question "Which dificulty level do you want? (low / med / high) "
        low med high))
   (assert (level ?response))
)

( defrule finalInfoRecolection ""
    (init-exec)
    (not (result ?))
      => 
	  (printout t crlf)
	  (printout t "INFO RECOLECTION ENDED" crlf)
	  (printout t "START FILTERING" crlf)
      (focus filter)     
)

;; FILTERING MODULE

(defmodule filter
    (import MAIN ?ALL)
    (import info-recolection ?ALL)
    (export ?ALL)
)

( defrule filtering-rule ""
    (init-exec)
    (not (result ?))
    =>
    (printout t "hola" crlf)
	(bind $?allEnf (find-all-instances ((?inst Enfermetat)) TRUE))
	(loop-for-count (?i 1 (length$ ?allEnf)) do
		(bind ?enf (nth$ ?i ?allEnf)) 
        (printout t "hola" crlf)
		(bind ?nE (sym-cat R**(send ?enf get-n) ?i))	 
		(bind ?inst (make-instance ?nE of Recomendacion))
		(send ?inst put-enf (instance-address (nth$ ?i ?allEnf)))
	)
)

(defrule removeLevels "Rule to remove undesired levels"
    (init-exec)
	?posRecm  <- (object (is-a Recomendacion) (enf ?enfRec))
	?enf <- (object (is-a Enfermetat) (n $?nom) (ty ?ty) (level ?lev))
    (level ?level)
    (test (and (eq ?enf ?enfRec) (not (eq ?lev ?level))))
    =>
	(printout t "Removed because it does not have the correct Level: " (instance-name ?posRecm) crlf)	
    (send ?posRecm delete)
)

(defrule rCardio "Rule to remove cardiovascular Sickness"
    (init-exec)
	?posRecm  <- (object (is-a Recomendacion) (enf ?enfRec))
	?enf <- (object (is-a Enfermetat) (n $?nom) (ty ?ty))
    (cardio sickness ?sickness)
    (test (eq cardio ?ty))
    (test (and (eq ?enf ?enfRec) (not (eq ?nom ?sickness))))
    =>
	(printout t "Removed because it does not have the correct Sickness: " (instance-name ?posRecm) crlf)	
    (send ?posRecm delete)
)


(defrule rOseo "Rule to remove oseo Sickness"
    (init-exec)
	?posRecm  <- (object (is-a Recomendacion) (enf ?enfRec))
	?enf <- (object (is-a Enfermetat) (n $?nom) (ty ?ty))
    (oseo sickness ?sickness)
    (test (eq oseomuscular ?ty))
    (test (and (eq ?enf ?enfRec) (not (eq ?nom ?sickness))))
    =>
	(printout t "Removed because it does not have the correct Sickness: " (instance-name ?posRecm) crlf)	
    (send ?posRecm delete)
)

(defrule rDepre "Rule to remove depresion Sickness"
    (init-exec)
	?posRecm  <- (object (is-a Recomendacion) (enf ?enfRec))
	?enf <- (object (is-a Enfermetat) (n $?nom) (ty ?ty))
    (depresion sickness ?sickness)
    (test (eq depresion ?ty))
    (test (and (eq ?enf ?enfRec) (not (eq ?nom ?sickness))))
    =>
	(printout t "Removed because it does not have the correct Sickness: " (instance-name ?posRecm) crlf)	
    (send ?posRecm delete)
)

(defrule rFrag "Rule to remove fragility Sickness"
    (init-exec)
	?posRecm  <- (object (is-a Recomendacion) (enf ?enfRec))
	?enf <- (object (is-a Enfermetat) (n $?nom) (ty ?ty))
    (fragility sickness ?sickness)
    (test (eq fragilidad ?ty))
    (test (and (eq ?enf ?enfRec) (not (eq ?nom ?sickness))))
    =>
	(printout t "Removed because it does not have the correct Sickness: " (instance-name ?posRecm) crlf)	
    (send ?posRecm delete)
)

(defrule rIncon "Rule to remove incontinency Sickness"
    (init-exec)
	?posRecm  <- (object (is-a Recomendacion) (enf ?enfRec))
	?enf <- (object (is-a Enfermetat) (n $?nom) (ty ?ty))
    (incon sickness ?sickness)
    (test (eq incontinencia ?ty))
    (test (and (eq ?enf ?enfRec) (not (eq ?nom ?sickness))))
    =>
	(printout t "Removed because it does not have the correct Sickness: " (instance-name ?posRecm) crlf)	
    (send ?posRecm delete)
)

(defrule rCaidas "Rule to remove caidas Sickness"
    (init-exec)
	?posRecm  <- (object (is-a Recomendacion) (enf ?enfRec))
	?enf <- (object (is-a Enfermetat) (n $?nom) (ty ?ty))
    (fall sickness ?sickness)
    (test (eq caidas ?ty))
    (test (and (eq ?enf ?enfRec) (not (eq ?nom ?sickness))))
    =>
	(printout t "Removed because it does not have the correct Sickness: " (instance-name ?posRecm) crlf)	
    (send ?posRecm delete)
)

(defrule rRenal "Rule to remove renal Sickness"
    (init-exec)
	?posRecm  <- (object (is-a Recomendacion) (enf ?enfRec))
	?enf <- (object (is-a Enfermetat) (n $?nom) (ty ?ty))
    (renal sickness ?sickness)
    (test (eq renal ?ty))
    (test (and (eq ?enf ?enfRec) (not (eq ?nom ?sickness))))
    =>
	(printout t "Removed because it does not have the correct Sickness: " (instance-name ?posRecm) crlf)	
    (send ?posRecm delete)
)

(defrule removeDiabetes "Rule to remove diabetes Sickness"
    (init-exec)
	?posRecm  <- (object (is-a Recomendacion) (enf ?enfRec))
	?enf <- (object (is-a Enfermetat) (n $?nom) (ty ?ty))
    (diabetes sickness ?sickness)
    (test (eq diabetes ?ty))
    (test (and (eq ?enf ?enfRec) (not (eq ?nom ?sickness))))
    =>
	(printout t "Removed because it does not have the correct Sickness: " (instance-name ?posRecm) crlf)	
    (send ?posRecm delete)
)

( defrule finalFiltering ""
    (init-exec)
      => 
	  (printout t crlf)
	  (printout t "FILTERING ENDED" crlf)
	  (printout t "START PRINTING" crlf)
      (focus printing)     
)

;; PRINTING MODULE

(defmodule printing
    (import MAIN ?ALL)
    (import info-recolection ?ALL)
    (import filter ?ALL)
    (export ?ALL)
)

(defrule b-final-print "BEFORE FINAL PRINT"
    (init-exec)
    (not (result ?))
    =>
    (printout t "INIT RESULT GENERATION" crlf)
    (bind ?resultat (make-instance [Result_1] of Resultat))
	(bind $?allRec (find-all-instances ((?inst Recomendacion)) TRUE)) ;;; loop all recomendations
	(loop-for-count (?i 1 (length$ ?allRec)) do
        (bind ?enfermetat (send (nth$ ?i ?allRec) get-enf)) ;;; Get the recomendation 
        ; (bind $?allEx (send ?enfermetat get-ex)) ;;; Get all the exercices needed for the recomendations
        (loop-for-count (?k 1 7) do
            (bind ?dd (sym-cat dia ?k)) ;;; gen the day variable
            (bind ?dt (sym-cat tdia ?k)) ;;; gen the time day variable
            (bind $?dayEx (send ?enfermetat (sym-cat get- ?dd))) ;;; Get all the exercices needed for the recomendations
            ;;; Loop for the 7 days of the week
            (loop-for-count (?j 1 (length$ ?dayEx)) do
                (bind ?ex (instance-address * (nth$ ?j ?dayEx))) ;;; Get The Exercici
                ; (printout t "Day: " ?k crlf)
                (bind $?llista (send ?resultat (sym-cat get- ?dd)))
                (bind ?tTotal (send ?resultat (sym-cat get- ?dt)))
                (bind ?tTotal (+ (send ?ex get-duration) ?tTotal))
                
                ; Is it member
                (if (eq (member (instance-name ?ex) ?llista) FALSE)
                    then
                    (bind $?llista2 (insert$ ?llista (+ (length$ ?llista) 1) (instance-name ?ex)))
                    ;; Insert to list
                    (send ?resultat (sym-cat put- ?dd) ?llista2)
                    ;; Insert to Time
                    (send ?resultat (sym-cat put- ?dt) ?tTotal)
                )
            )
        )
	)
    (assert (final))
)

(defrule final-print "EL FINAL"
    (final)
	?resultat  <- (object (is-a Resultat))
    =>
    (printout t "INIT RESULT PRINTING" crlf)

    (printout t crlf)
    (loop-for-count (?i 1 7) do
        (printout t crlf)
        (bind ?dd (sym-cat dia ?i)) ;;; gen the day variable
        (bind ?dt (sym-cat tdia ?i)) ;;; gen the time day variable
        (bind ?daytime (send ?resultat (sym-cat get- ?dt)))
        (bind $?exeDay (send ?resultat (sym-cat get- ?dd)))
        (if (> ?daytime 0)
            then
            (printout t "Day: " ?i crlf)
            (printout t "Durada Total: " ?daytime crlf)
            (loop-for-count (?j 1 (length$ ?exeDay)) do
                (bind ?ex (instance-address * (nth$ ?j ?exeDay))) ;;; Get The Exercici
                (bind ?d (send ?ex get-duration))
                (bind ?desc (send ?ex get-description))
                (bind ?n (send ?ex get-tipo))
                (printout t crlf)
                (printout t "Nombre: " ?n crlf)
                (printout t "Durada: " ?d crlf)
                (printout t "Descripcio: " ?desc crlf)
                (printout t crlf)
            )
        )
    )
)
