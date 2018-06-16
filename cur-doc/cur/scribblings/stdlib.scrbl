#lang scribble/manual
@(require
   "defs.rkt")

@title[#:style '(toc)]{Standard Library}
Cur has a small standard library, primary for demonstration purposes.

@local-table-of-contents[]

@include-section{stdlib/datum.scrbl}
@include-section{stdlib/sugar.scrbl}
@include-section{stdlib/bool.scrbl}
@include-section{stdlib/nat.scrbl}
@include-section{stdlib/sigma.scrbl}
@include-section{stdlib/maybe.scrbl}
@include-section{stdlib/list.scrbl}
@include-section{stdlib/equality.scrbl}
@include-section{stdlib/typeclass.scrbl}
