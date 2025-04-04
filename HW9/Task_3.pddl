(define (problem logistics-problem-2)
  (:domain logistics)

  (:objects
    changi tampines bedok - location
    truck1 - truck
    package1 package2 - package
  )

  (:init
    (at truck1 tampines)
    (at package1 bedok)
    (at package2 changi)
  )

  (:goal
    (and
      (at package1 changi)
      (at package2 bedok)
    )
  )
)
