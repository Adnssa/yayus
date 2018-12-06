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
(defrule determine-condition-state ""
   (not (cronical sickness  ?))
   (not (result ?))
   =>
   (if (yes-or-no-p "Do you have a Cronical Sickness (yes/no)? ") 
       then 
       (bind ?response
        (ask-question "Which of the following you have? (Arthritis/Alzeimer/Other)? "
            ar alzeimer other))
        (switch ?response
                (case ar 
            then
                (assert (cronical sickness arthritis))
            )
            (case alzeimer
            then
                (assert (cronical sickness alzeimer))
            )
            (case other
            then
                (assert (cronical sickness other))
            )
            (default
                (assert (cronical sickness other))
            )
        )
       else 
       (assert (cronical sickness none))))

(defrule no-cronic ""
    (cronical sickness none)
    (not (result ?))
    =>
    (assert (result "No has de fer exercici!"))
)

(defrule cronic-a ""
    (cronical sickness arthritis)
    (not (result ?))
    =>
    (assert (result "You have Artritis"))
)
(defrule cronic-b ""
    (cronical sickness alzeimer)
    (not (result ?))
    =>
    (assert (result "You have Alzeimer"))
)
(defrule cronic-c ""
    (cronical sickness other)
    (not (result ?))
    =>
    (assert (result "You have Other"))
)


;;;****************************
;;;* STARTUP AND REPAIR RULES *
;;;****************************

(defrule system-banner ""
  (declare (salience 10))
  =>
  (printout t crlf crlf)
  (printout t "The Fitness Diagnosis System")
  (printout t crlf crlf))

(defrule print-result ""
  (declare (salience 10))
  (result ?item)
  =>
  (printout t crlf crlf)
  (printout t "Suggested Repair:")
  (printout t crlf crlf)
  (format t " %s%n%n%n" ?item))

