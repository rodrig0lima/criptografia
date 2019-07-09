echo "Informe o nome da sua chave privada: (Default: chave_privada_A.pem)"
read chave_privada_A
if [ -z $chave_privada_A ]; then
    chave_privada_A="chave_privada_A.pem"
fi
echo "Informe o nome da chave pública do destinatário: (Default: chave_publica_B.pem)"
read chave_publica_B
if [ -z $chave_publica_B ]; then
    chave_publica_B="chave_publica_B.pem"
fi
echo "Informe o nome do documento: (Default: textoplano.txt): "
read documento
if [ -z $documento ]; then
    documento="textoplano.txt"
fi
echo "Informe o nome do arquivo da chave simetrica: (Default: chavesimetrica.pass)"
read chavesimetrica
if [ -z $chavesimetrica ]; then
    chavesimetrica="chavesimetrica.pass"
fi
echo "Informe o nome da saida do documento assinado: (Default: texto_assinado.txt.sha256): "
read documento_assinado
if [ -z $documento_assinado ]; then
    documento_assinado="texto_assinado.txt.sha256"
fi
echo "Informe o nome do documento criptografado: (Default: textocifrado.enc): "
read documento_cifrado
if [ -z $documento_cifrado ]; then
    documento_cifrado="textocifrado.enc"
fi
echo "Informe o nome da assinatura criptografada: (Default: assinaturacifrada.enc): "
read assinatura_cifrada
if [ -z $assinatura_cifrada ]; then
    assinatura_cifrada="assinaturacifrada.enc"
fi
echo "Informe o nome da chave simetrica criptografada: (Default: assinaturasimetricacifrada.enc): "
read chave_simetrica_cifrada
if [ -z $chave_simetrica_cifrada ]; then
    chave_simetrica_cifrada="chavesimetricacifrada.enc"
fi
openssl dgst -sha256 -sign $chave_privada_A -out $documento_assinado $documento
openssl enc -aes256 -in $documento_assinado -out $assinatura_cifrada -iv 0000000000000000 -pass file:$chavesimetrica
openssl enc -aes256 -in $documento -out $documento_cifrado -iv 0000000000000000 -pass file:$chavesimetrica
openssl rsautl -encrypt -inkey $chave_publica_B -pubin -in $chavesimetrica -out $chave_simetrica_cifrada
echo "Comandos executados:"
echo "openssl dgst -sha256 -sign $chave_privada_A -out $documento_assinado $documento"
echo "openssl enc -aes256 -in $documento_assinado -out $assinatura_cifrada -iv 0000000000000000 -pass file:$chavesimetrica"
echo "openssl enc -aes256 -in $documento -out $documento_cifrado -iv 0000000000000000 -pass file:$chavesimetrica"
echo "openssl rsautl -encrypt -inkey $chave_publica_B -pubin -in $chavesimetrica -out $chave_simetrica_cifrada"
echo ""
echo "Arquivos gerados: "
echo "todos/privado/$documento_cifrado"
echo "todos/privado/$assinatura_cifrada"
echo "todos/privado/$chave_simetrica_cifrada"
echo ""
echo "Pressione enter para continuar..."
read a
