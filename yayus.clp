;;;======================================================
;;;     Fitness Diagnostication System
;;;
;;;     This expert system diagnoses fitness exercices for Old People.
;;;
;;;     CLIPS Version 6.0 Example
;;;
;;;     To execute, merely load, reset and run.
;;;======================================================

;;****************
;;* DEFCLASS *
;;****************

(defclass Exercici
    (is-a Exercici)
    (role concrete)
	(single-slot duration
		(type INTEGER)
		(create-accessor read-write)
    )
	(single-slot description
		(type STRING)
		(create-accessor read-write)
    )
)

(defclass Enfermetat
    (is-a Enfermetat)
    (role concrete)
    (single-slot name
        (type SYMBOL)
        (allowed-values ar alzeimer other)
        (create-accessor read-write)
    )
    (multislot exercicis
        (type INSTANCE)
        (create-accessor read-write)
    )
)

;;****************
;;* INSTANCES *
;;****************

(definstances instancies
;; EXERCICIS
    ([ont_ex_1] of Exercici
        (duration 10)
        (description
            "Fer Aixis amb el Bras"
        )
    )
    ([ont_ex_2] of Exercici
        (duration 5)
        (description
            "Fer Aixis amb el Bras"
        )
    )
    ([ont_ex_3] of Exercici
        (duration 15)
        (description
            "Fer casi Res"
        )
    )
;; ENFERMETATS
    ([ont_en_1] of Enfermetat
        (name ar)
        (exercicis
            [ont_ex_1]
        )
    )
    ([ont_en_2] of Enfermetat
        (name artritis)
        (exercicis
            [ont_ex_1]
            [ont_ex_2]
        )
    )
    ([ont_en_3] of Enfermetat
        (name other)
        (exercicis
            [ont_ex_3]
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
    (focus info-recolection)
)

;; INFO RECOLECTION MODULE

(defmodule info-recolection
    (import MAIN ?ALL)
    (export ?ALL)
)

(defrule determine-condition-state ""
   (not (cronical sickness  ?))
   (not (result ?))
   =>
   (if (yes-or-no-p "Do you have a Cronical Sickness (yes/no)? ") 
       then 
       (bind ?response
        (ask-question "Which of the following you have? (Arthritis/Alzeimer/Other)? "
            ar alzeimer other))
        (assert (cronical sickness ?response))
       else 
       (assert (cronical sickness none))))

( defrule finalInfoRecolection ""
    (cronical sickness ?sickness)
      => 
	  (printout t crlf)
	  (printout t "INFO RECOLECTION ENDED" crlf)
	  (printout t "START FILTERING" crlf)
      (focus filter)     
)

; (defrule no-cronic ""
;     (cronical sickness none)
;     (not (result ?))
;     =>
;     (assert (result "No has de fer exercici!"))
; )

; (defrule cronic-a ""
;     (cronical sickness arthritis)
;     (not (result ?))
;     =>
;     (assert (result "You have Artritis"))
; )
; (defrule cronic-b ""
;     (cronical sickness alzeimer)
;     (not (result ?))
;     =>
;     (assert (result "You have Alzeimer"))
; )
; (defrule cronic-c ""
;     (cronical sickness other)
;     (not (result ?))
;     =>
;     (assert (result "You have Other"))
; )


;; FILTERING MODULE

(defmodule filter
    (import MAIN ?ALL)
    (import info-recolection ?ALL)
    (export ?ALL)
)

( defrule filtering-rule ""
    (not (result ?))
    =>
    (printout t "hola" crlf)
	; (bind $?allEnf (find-all-instances ((?inst Enfermetat)) TRUE))
	; (loop-for-count (?i 1 (length$ ?allEnf)) do
		; (bind ?enf (nth$ ?i ?allEnf)) 
    ;     (printout t "hola" crlf)
	; )
    (assert (result "FINAL"))
)

;; RESULT

(defrule print-result ""
  (declare (salience 10))
  (result ?item)
  =>
  (printout t crlf crlf)
  (printout t "Suggested Repair:")
  (printout t crlf crlf)
  (format t " %s%n%n%n" ?item))

