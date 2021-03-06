; RUN: llvm-mc -triple avr -show-encoding < %s | FileCheck %s


foo:

  subi r22, 82
  subi r27, 39
  subi r31, 244
  subi r16, 144
  
; CHECK: subi r22, 82                  ; encoding: [0x62,0x55]
; CHECK: subi r27, 39                  ; encoding: [0xb7,0x52]
; CHECK: subi r31, 244                 ; encoding: [0xf4,0x5f]
; CHECK: subi r16, 144                 ; encoding: [0x00,0x59]
