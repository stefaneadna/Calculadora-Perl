sub valor_a{
	#Recebendo os valores do usuario
	print("Digite o valor de a: \n");
	my $a = <>;
	chomp $a;
	return $a;
}

sub valor_b{
	#Recebendo os valores do usuario
	print("Digite o valor de b: \n");
	my $b = <>;
	chomp $b;
	return $b;
}

print("\nOI, SOU UMA CALCULADORA!");
print("\n");
while(1){
	print("\n\nDigite o valor da operacao desejada:\n");
	print("1- Soma\n");
	print("2- Subtracao\n");
	print("3- Multiplicacao\n");
	print("4- Divisao\n");
	print("5- Potencia\n");
	print("6- Media\n");
	print("7- Raiz Quadrada\n");
	print("8- Sair\n");
	print("\n");

	# Recebendo o valor da operação do teclado
	my $ope = <>;
	chomp $ope;

	if($ope < 1 || $ope > 8){
		print("\nVoce digitou uma operacao invalida. Por favor digite a operacao novamente\n");
	}
	#Encerra o programa
	elsif($ope == 8){
		print("Obrigado por usar nossa calculadora :)");
		exit 1;	
	}
	else{

		$a = valor_a();
		$b = valor_b();

		$resultado = 0;
		# Realizando as operações

		# Soma
		if($ope == 1){
			$resultado = $a + $b;
			print("$a + $b = $resultado");
		}
		# Subtração
		elsif($ope == 2){
			$resultado = $a - $b;
			print("$a - $b = $resultado");
		}

		#Multiplicação
		elsif($ope == 3){
			$resultado = $a * $b;
			print("$a * $b = $resultado");
		}
		#Divisão
		elsif($ope == 4){
			while($b==0){
				print("Isso eh uma divisao, logo o valor de b nao pode ser 0.\n");
				$b = valor_b();
			}
			$resultado = $a / $b;
			print("$a / $b = $resultado");
		}
		#Exponenciação
		elsif($ope == 5){
			$resultado = $a ** $b;
			print("$a ** $b = $resultado");
		}
		#Média
		elsif($ope == 6){
			$resultado = ($a + $b) / 2;
			print("A media de $a e $b eh: $resultado");
		}
		#Raiz		
		elsif($ope == 7){
			while($b==0){
				print("Isso eh uma raiz quadrada, logo o valor de b nao pode ser 0.\n");
				$b = valor_b();
			}
			$resultado = ($a)**(1/$b);
			print("A raiz eh dada por: $resultado");
		}
				
	}
}