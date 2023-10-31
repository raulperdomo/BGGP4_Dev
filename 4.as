.even
.global _4 
_4:	mov x0, #-100	
	ldr x1, =filename
	mov x2, #0102
	mov x3, #0666		
	mov x8, #56
	svc 0
	mov x10, x0
	
	mov x0, #-100
	ldr x1, =self
	mov x2, #0
	mov x8, #56
	svc 0

	mov x1, #0
	mov x2, x10
	mov x3, #0
	mov x4, #243
	mov x5, #0
	mov x8, #285
	svc 0

	mov x0, #4
	mov x8, #93
	svc 0
filename:	.asciz "4"
self: 		.asciz "/proc/self/exe"
