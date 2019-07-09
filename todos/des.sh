echo "Informe o nome da sua chave privada: (Default: chave_privada_B.pem)"
read chave_privada_B
if [ -z $chave_privada_B ]; then
    chave_privada_B="chave_privada_B.pem"
fi
echo "Informe o nome da chave simetrica criptografada: (Default: assinaturasimetricacifrada.enc): "
read chave_simetrica_cifrada
if [ -z $chave_simetrica_cifrada ]; then
    chave_simetrica_cifrada="chavesimetricacifrada.enc"
fi
echo "Informe o nome do arquivo da chave simetrica: (Default: chavesimetrica.pass)"
read chavesimetrica
if [ -z $chavesimetrica ]; then
    chavesimetrica="chavesimetrica.pass"
fi
echo "Informe o nome do documento criptografado: (Default: textocifrado.enc): "
read documento_cifrado
if [ -z $documento_cifrado ]; then
    documento_cifrado="textocifrado.enc"
fi
echo "Informe o nome original do documento: (Default: textoplano.txt): "
read documento
if [ -z $documento ]; then
    documento="textoplano.txt"
fi
echo "Informe o nome original do documento assinado: (Default: texto_assinado.txt.sha256): "
read documento_assinado
if [ -z $documento_assinado ]; then
    documento_assinado="texto_assinado.txt.sha256"
fi
echo "Informe o nome da assinatura criptografada: (Default: assinaturacifrada.enc): "
read assinatura_cifrada
if [ -z $assinatura_cifrada ]; then
    assinatura_cifrada="assinaturacifrada.enc"
fi
echo "Informe o nome da chave pública do remetente: (Default: chave_publica_A.pem)"
read chave_publica_A
if [ -z $chave_publica_A ]; then
    chave_publica_A="chave_publica_A.pem"
fi

echo "Comandos executados:"
echo "openssl rsautl -decrypt -inkey $chave_privada_B -in $chave_simetrica_cifrada -out $chavesimetrica"
echo "openssl enc -aes256 -in $documento_cifrado -out $documento -iv 0000000000000000 -pass file:$chavesimetrica -d"
echo "openssl enc -aes256 -in $assinatura_cifrada -out $documento_assinado -iv 0000000000000000 -pass file:$chavesimetrica"
echo "openssl dgst -sha256 -verify $chave_publica_A -signature $documento_assinado $documento"
echo ""
echo "Resultado: "
echo ""
openssl rsautl -decrypt -inkey $chave_privada_B -in $chave_simetrica_cifrada -out $chavesimetrica
openssl enc -aes256 -in $documento_cifrado -out $documento -iv 0000000000000000 -pass file:$chavesimetrica -d
openssl enc -aes256 -in $assinatura_cifrada -out $documento_assinado -iv 0000000000000000 -pass file:$chavesimetrica -d
openssl dgst -sha256 -verify $chave_publica_A -signature $documento_assinado $documento
echo ""
echo "Pressione enter para continuar..."
read a
