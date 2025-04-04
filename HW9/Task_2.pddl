(define (problem logistics-problem-1)
  (:domain logistics)

  (:objects
    changi tampines bedok - location
    truck1 - truck
    package1 - package
  )

  (:init
    (at truck1 tampines)
    (at package1 bedok)
  )

  (:goal
    (at package1 changi)
  )
)
