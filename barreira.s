.data
shared_count: .int  0
.text

inicializar_barreira:
  move $a0, $a1 # a0 = endereco da variavel da barreira / a1 = numero de threads
jr $ra

executar_barreira:
  fi shared_count   # fetch_and_increment shared_count (atomico)
  looping:
    lw $v0, shared_count
    bne $v0, $a0, looping # segura enquanto shared_count for diferente do numero de threads
jr $ra
