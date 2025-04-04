(define (domain logistics)
  (:requirements :strips :typing)
  
  (:types truck package location)

  (:predicates
    (at ?obj - (either truck package) ?loc - location)
    (in ?pkg - package ?trk - truck)
  )

  ;; Truck can move from one location to another
  (:action drive
    :parameters (?t - truck ?from - location ?to - location)
    :precondition (at ?t ?from)
    :effect (and (not (at ?t ?from)) (at ?t ?to))
  )

  ;; Load a package into a truck at the same location
  (:action load
    :parameters (?p - package ?t - truck ?l - location)
    :precondition (and (at ?p ?l) (at ?t ?l))
    :effect (and (not (at ?p ?l)) (in ?p ?t))
  )

  ;; Unload a package from the truck to a location
  (:action unload
    :parameters (?p - package ?t - truck ?l - location)
    :precondition (and (in ?p ?t) (at ?t ?l))
    :effect (and (not (in ?p ?t)) (at ?p ?l))
  )
)
