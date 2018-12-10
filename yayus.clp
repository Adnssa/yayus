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

(defclass Resultat
    (is-a USER)
    (role concrete)
    (multislot dia1
		(type INSTANCE)
		(allowed-classes Exercici)
		; (cardinality 1 ?VARIABLE)
        (create-accessor read-write)
    )
	(single-slot tdia1
		(type INTEGER)
		(create-accessor read-write)
    )
    (multislot dia2
		(type INSTANCE)
		(allowed-classes Exercici)
		; (cardinality 1 ?VARIABLE)
        (create-accessor read-write)
    )
	(single-slot tdia2
		(type INTEGER)
		(create-accessor read-write)
    )
    (multislot dia3
		(type INSTANCE)
		(allowed-classes Exercici)
		; (cardinality 1 ?VARIABLE)
        (create-accessor read-write)
    )
	(single-slot tdia3
		(type INTEGER)
		(create-accessor read-write)
    )
    (multislot dia4
		(type INSTANCE)
		(allowed-classes Exercici)
		; (cardinality 1 ?VARIABLE)
        (create-accessor read-write)
    )
	(single-slot tdia4
		(type INTEGER)
		(create-accessor read-write)
    )
    (multislot dia5
		(type INSTANCE)
		(allowed-classes Exercici)
		; (cardinality 1 ?VARIABLE)
        (create-accessor read-write)
    )
	(single-slot tdia5
		(type INTEGER)
		(create-accessor read-write)
    )
    (multislot dia6
		(type INSTANCE)
		(allowed-classes Exercici)
		; (cardinality 1 ?VARIABLE)
        (create-accessor read-write)
    )
	(single-slot tdia6
		(type INTEGER)
		(create-accessor read-write)
    )
    (multislot dia7
		(type INSTANCE)
		(allowed-classes Exercici)
		; (cardinality 1 ?VARIABLE)
        (create-accessor read-write)
    )
	(single-slot tdia7
		(type INTEGER)
		(create-accessor read-write)
    )
)

(defclass Exercici
    (is-a USER)
    (role concrete)
	(single-slot duration
		(type INTEGER)
		(create-accessor read-write)
    )
	(single-slot description
		(type STRING)
		(create-accessor read-write)
    )
	(single-slot inten
		(type INTEGER)
		(create-accessor read-write)
    )
)

(defclass Enfermetat
    (is-a USER)
    (role concrete)
    (single-slot level
        (type SYMBOL)
        (allowed-symbols low med high)
        (create-accessor read-write)
    )
    (single-slot ty 
        (type SYMBOL)
        ; (allowed-symbols arritmia stroke diabetes)
        (create-accessor read-write)
    )
    (single-slot n
        (type SYMBOL)
        (allowed-symbols arritmia stroke diabetes)
        (create-accessor read-write)
    )
    (multislot ex
		(type INSTANCE)
		(allowed-classes Exercici)
		; (cardinality 1 ?VARIABLE)
        (create-accessor read-write)
    )
)

(defclass Recomendacion
    (is-a USER)
    (role concrete)
    (single-slot enf
		(type INSTANCE)
		(allowed-classes Enfermetat)
        (create-accessor read-write)
    )
)

;;****************
;;* INSTANCES *
;;****************

(definstances instancies
;; EXERCICIS
    (ont_ex_0 of Exercici
        (duration 10)
        (description
            "Elasticitat"
        )
        (inten 1)
    )
    (ont_ex_1 of Exercici
        (duration 10)
        (description
            "Fer Aixis amb el Bras"
        )
        (inten 10)
    )
    ([ont_ex_2] of Exercici
        (duration 5)
        (description
            "Fer Axas amb el Bras"
        )
        (inten 10)
    )
    ([ont_ex_3] of Exercici
        (duration 15)
        (description
            "Fer casi Res"
        )
        (inten 10)
    )
;; ENFERMETATS
    ([ont_en_1] of Enfermetat
        (level low)
        (ty cardio)
        (n arritmia)
        (ex
            [ont_ex_1]
        )
    )
    ([ont_en_1_2] of Enfermetat
        (level med)
        (ty cardio)
        (n arritmia)
        (ex
            [ont_ex_1]
            [ont_ex_2]
        )
    )
    ([ont_en_1_3] of Enfermetat
        (level high)
        (ty cardio)
        (n arritmia)
        (ex
            [ont_ex_1]
            [ont_ex_2]
            [ont_ex_2]
            [ont_ex_2]
        )
    )
    ([ont_en_2] of Enfermetat
        (level low)
        (ty cardio)
        (n stroke)
        (ex
            [ont_ex_1]
            [ont_ex_2]
            [ont_ex_3]
        )
    )
    ([ont_en_2_2] of Enfermetat
        (level med)
        (ty cardio)
        (n stroke)
        (ex
            [ont_ex_1]
            [ont_ex_2]
            [ont_ex_3]
        )
    )
    ([ont_en_2_3] of Enfermetat
        (level high)
        (ty cardio)
        (n stroke)
        (ex
            [ont_ex_1]
            [ont_ex_2]
            [ont_ex_3]
        )
    )
    ([ont_en_3] of Enfermetat
        (level low)
        (ty diabetes)
        (n diabetes)
        (ex
            [ont_ex_3]
            [ont_ex_0]
        )
    )
    ([ont_en_3_2] of Enfermetat
        (level med)
        (ty diabetes)
        (n diabetes)
        (ex
            [ont_ex_3]
            [ont_ex_0]
        )
    )
    ([ont_en_3_3] of Enfermetat
        (level high)
        (ty diabetes)
        (n diabetes)
        (ex
            [ont_ex_3]
            [ont_ex_0]
        )
    )
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
        (ask-question "Which of the following you have? (arritmia / stroke)? "
            arritmia stroke))
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

(defrule removeCronical "Rule to remove cardiovascular Sickness"
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
        (bind $?allEx (send ?enfermetat get-ex)) ;;; Get all the exercices needed for the recomendations
        (loop-for-count (?j 1 (length$ ?allEx)) do
            (bind ?ex (instance-address * (nth$ ?j ?allEx))) ;;; Get The Exercici
            ; (toresultat ?ex ?resultat)
            ;;; Loop for the 7 days of the week
            (loop-for-count (?k 1 7) do
                ; (printout t "Day: " ?k crlf)
                (bind ?dd (sym-cat dia ?k)) ;;; gen the day variable
                (bind ?dt (sym-cat tdia ?k)) ;;; gen the time day variable
                (bind $?llista (send ?resultat (sym-cat get- ?dd)))
                (bind ?tTotal (send ?resultat (sym-cat get- ?dt)))
                (bind ?tTotal (+ (send ?ex get-duration) ?tTotal))

                (bind $?llista2 (insert$ ?llista (+ (length$ ?llista) 1) (instance-name ?ex)))
                ;; Insert to list
                (send ?resultat (sym-cat put- ?dd) ?llista2)
                ;; Insert to Time
                (send ?resultat (sym-cat put- ?dt) ?tTotal)
                (break)

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
        (printout t "Day: " ?i crlf)
        (bind ?dd (sym-cat dia ?i)) ;;; gen the day variable
        (bind ?dt (sym-cat tdia ?i)) ;;; gen the time day variable
        (bind ?daytime (send ?resultat (sym-cat get- ?dt)))
        (bind $?exeDay (send ?resultat (sym-cat get- ?dd)))
        (if (<= ?daytime 0)
            then
            (break)
        )
        (printout t "Durada Total: " ?daytime crlf)
        (loop-for-count (?j 1 (length$ ?exeDay)) do
            (bind ?ex (instance-address * (nth$ ?j ?exeDay))) ;;; Get The Exercici
            (bind ?d (send ?ex get-duration))
            (bind ?desc (send ?ex get-description))
            (printout t crlf)
            (printout t "Durada: " ?d crlf)
            (printout t "Descripcio: " ?desc crlf)
            (printout t crlf)
        )
    )
)
