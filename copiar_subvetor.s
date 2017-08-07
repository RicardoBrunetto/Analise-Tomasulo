.data
exit_val: .int  10
.text
# Copia um subvetor de v1 para v2
# Recebe como parametros
# a0 - endereco do primeiro vetor (primeiro elemento do vetor)
# a1 - endereco do segundo vetor (primeiro elemento do vetor)
# a2 - indice inicial
# a3 - indice final
# Copia o subvetor a0[a2 ... a3] para a1[0 ... a3-a2]
copiar_subvetor:
  sub $v0, $a3, $a2 		# $v0 sera o contador
  li  $at, 4            # carrega 4 em $at
  mul $a2, $a2, $at     # faz a2 * 4
  add $a0, $a0, $a2 		# coloca $a0 em $a0[$a2]
  looping:
    lw $at, 0($a0)			# carrega o elemento do subvetor para $at
    sw $at, 0($a1)			# armazena o elemento no vetor
    addiu $a0, $a0, 4 	# avanca 4 bytes em a0
    addiu $a1, $a1, 4 	# avanca 4 bytes em a1
    addi $v0, $v0, -1 	# $v0--
    bgez $v0, looping 	# if ($v0 > 0) looping
fim:
  lw $v0, exit_val
  syscall
