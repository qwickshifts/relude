(lang dune 3.8)

(using melange 0.1)

(generate_opam_files)

(name relude)

(license "MIT")

(maintainers "Andy White" "Michael Martin")

(authors "Andy White" "Michael Martin")

(homepage https://github.com/reazen/relude)

(bug_reports https://github.com/reazen/relude/issues)

(package
 (name relude)
 (synopsis "Relude")
 (description "Alternative standard library (prelude) for ReasonML")
 (depends
  reason
  (melange
    (>= 3.0.0))
  dune
  bastet
  melange-jest
  opam-check-npm-deps))
