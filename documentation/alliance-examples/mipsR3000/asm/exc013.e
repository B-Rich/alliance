
;  ###----------------------------------------------------------------###
;  # file	: exc013.s						#
;  # date	: Mar 26 1996						#
;  # descr.	: functional test for mips				#
;  ###----------------------------------------------------------------###

	;  ###--------------------------------------------------------###
	;  #   exceptions :						#
	;  #     - sleep                                		#
	;  ###--------------------------------------------------------###

val1    	.equ	0x3C    		

system_stack	.equ	0xC0000000		; system stack address

user_prog	.equ	0x00400000
val             .equ    0x28                    ; ri

		.org	0x80000080
		.start	it_handler

	;  ###--------------------------------------------------------###
	;  #   interrupt and exception handler				#
	;  ###--------------------------------------------------------###

it_handler:

		sw	r29, 0 (r30)
		sw	r28, 4 (r30)

		addiu	r28, r0 ,val1
		mfc0	r29,cause 
		nop
		and	r29, r29, r28		; data address violation ?
                addiu   r27,r0,val
		bne	r29,r27, other_causes
		nop

		lw	r29, 0 (r30)
		lw	r28, 4 (r30)

	;  ###--------------------------------------------------------###
	;  #   restore return address before returning (from EXCEPTION)	#
	;  # to the user program (address must be saved by the user	#
	;  # prior to the EXCEPTION in epc)				#
	;  ###--------------------------------------------------------###

restore_return_adr:
		mfc0    r1,epc
		nop
                addiu   r1,r1,8
		j	return
		nop

other_causes:	j	other_causes
		nop

	;  ###--------------------------------------------------------###
	;  #   return to the interrupted program			#
	;  ###--------------------------------------------------------###
                .org    0x800000d0
return:
		rfe
                jr      r1

		.end

