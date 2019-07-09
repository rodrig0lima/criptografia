#!/bin/bash
x="teste"

des()
{
	cd des
	des="0"
	while [ $des != "3" ]; do
		clear
		echo "================================="
		echo "DES"
		echo "1) Encriptar"
		echo "2) Decriptar"
		echo "3) Voltar"
		echo "================================="
		echo "Informe a opção desejada: "
		read des
		case "$des" in
			1)
				sh enc.sh
			;;
			2)
				sh des.sh
			;;
		esac
	done
	cd ..
}
des3()
{
	des3="0"
	cd 3des
	while [ $des3 != "3" ]; do
		clear
		echo "================================="
		echo "3DES"
		echo "1) Encriptar"
		echo "2) Decriptar"
		echo "3) Voltar"
		echo "================================="
		echo "Informe a opção desejada: "
		read des3
		case "$des3" in
			1)
				sh enc.sh
			;;
			2)
				sh des.sh
			;;
		esac
	done
	cd ..
}
aes()
{
	aes="0"
	cd aes
	while [ $aes != "3" ]; do
		clear
		echo "================================="
		echo "AES"
		echo "1) Encriptar"
		echo "2) Decriptar"
		echo "3) Voltar"
		echo "================================="
		echo "Informe a opção desejada: "
		read aes
		case "$aes" in
			1)
				sh enc.sh
			;;
			2)
				sh des.sh
			;;
		esac
	done
	cd ..
}
simetrica()
{
	simetrica="0"
	while [ $simetrica != "4" ]; do
		clear
		echo "================================="
		echo "Criptografia Simétrica"
		echo "1) DES"
		echo "2) 3DES"
		echo "3) AES"
		echo "4) Voltar"
		echo "================================="
		echo "Informe o tipo de criptografia simétrica desejada:"
		read simetrica
		case "$simetrica" in
			1)
				des
			;;
			2)
				des3
			;;
			3)
				aes
			;;
		esac
	done
}

resumo()
{
	clear
	echo "================================="
	echo "Resumos"
	echo "1) MD5"
	echo "2) SHA-1"
	echo "================================="
	echo "Informe o tipo de resumo desejado:"
	read tipo
	case "$tipo" in
		1)
			cd md5
			sh resumir.sh
			cd ..
		;;
		2)
			cd sha1
			sh resumir.sh
			cd ..
		;;
	esac
}

rsa(){
	rsa="0"
	cd rsa
	while [ $rsa != "5" ]; do
		clear
		echo "================================="
		echo "RSA"
		echo "1) Gerar chave privada"
		echo "2) Gerar chave pública"
		echo "3) Encriptar"
		echo "4) Decriptar"
		echo "5) Voltar"
		echo "================================="
		echo "Informe a opção desejada: "
		read rsa
		case "$rsa" in
			1)
				sh gera_chave_privada.sh
			;;
			2)
				sh gera_chave_publica.sh
			;;
			3)
				sh enc.sh
			;;
			4)
				sh des.sh
			;;
		esac
	done
	cd ..
}

assinatura_digital()
{
	sign="0"
	cd assinatura_digital
	while [ $sign != "5" ]; do
		clear
		echo "================================="
		echo "Assinatura digital"
		echo "1) Gerar chave privada"
		echo "2) Gerar chave pública"
		echo "3) Assinar"
		echo "4) Verificar assinatura"
		echo "5) Voltar"
		echo "================================="
		echo "Informe a opção desejada: "
		read sign
		case "$sign" in
			1)
				sh gera_chave_privada.sh
			;;
			2)
				sh gera_chave_publica.sh
			;;
			3)
				sh assinar.sh
			;;
			4)
				sh verificar_assinatura.sh
			;;
		esac
	done
	cd ..
}

todos()
{
	todos="0"
	cd todos
	while [ $todos != "6" ]; do
		clear
		echo "================================="
		echo "Assinatura com confidencialidade"
		echo "1) Gerar chaves publicas e privadas de A e B"
		echo "2) Compartilhar chaves publicas"
		echo "3) Encriptar e gerar arquivos"
		echo "4) Transmitir arquivos"
		echo "5) Decriptar arquivos"
		echo "6) Voltar"
		echo "================================="
		echo "Informe a opção desejada: "
		read todos
		case "$todos" in
			1)
				cd privado
				sh gera_chaves_A.sh
				cd ..
				sh gera_chaves_B.sh
			;;
			2)
				sh compartilhar_chaves_publicas.sh
			;;
			3)
				cd privado
				sh enc.sh
				cd ..
			;;
			4)
				cd privado
				sh transmitir_arquivos.sh
				cd ..
			;;
			5)
				sh des.sh
			;;
		esac
	done
	cd ..
}

menu()
{
    while true $x != "teste"
    do
        clear
        echo "================================="
        echo "Criptografia"
        echo "1) Criptografia simétrica"
        echo "	DES, 3DES, AES"
        echo "2) Resumos"
        echo "	MD5, SHA1"
        echo "3) Chave pública"
        echo "	RSA"
        echo "4) Assinatura digital"
        echo "	Resumir e assinar digitalmente"
        echo "5) Todos os serviços"
        echo ""
        echo "0) Sair do programa"
        echo "================================="
        echo "Informe a opção desejada:"
        read x
        echo "Escolheu ($x)"
        echo "================================="

        case "$x" in
            1)
                simetrica
	    	;;
			2)
				resumo
			;;
			3)
				rsa
			;;
			4)
				assinatura_digital
			;;
			5)
				todos
			;;
			0)
				exit
			;;
	esac
    done
}

menu
