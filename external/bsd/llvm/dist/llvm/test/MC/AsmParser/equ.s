// RUN: not llvm-mc -n -triple i386-unknown-unknown %s 2> %t
// RUN: FileCheck < %t %s

.equ	a, 0
.set	a, 1
.equ	a, 2
.equiv	a, 3
// CHECK: error: redefinition of 'a'

