.data
.macro close			# Criando uma macro com uma funcao chamada close.
   li $v0, 10 			# Preparando o processador para finalizar o programa.
   syscall 			# Executando instrucao.
.end_macro			# Fim da macro.


.macro printf (%str)		# Criando uma macro com uma funcao chamada printf que vai conter uma string.
      .data			# Declarando as variáveis e constantes.
       msg: .asciiz %str	# msg = %str de fora.
       .text				
       li $v0, 4		# Ler imediatamente o registrador v0.
       la $a0, msg		# Lendo endereço de memória da variável msg e armazenando em a0.
       syscall			# Executando instrucoes.
.end_macro			# Fim da macro.

.text				# Diretiva text onde vai conter o código.
.globl main			# Diretiva globl é onde vc informa qual é a function principal do programa.

main:				# funcao main.
printf("Hello world\n")		# Chamando a funcao printf da macro e passando a string de fora.
close				# Chamando a funcao close da macro e terminando o código.
