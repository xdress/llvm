; RUN: llc < %s -march=arm64 | FileCheck %s
define void @foo() nounwind {
; CHECK: foo
; CHECK: brk #1
  tail call void @llvm.trap()
  ret void
}
declare void @llvm.trap() nounwind
