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
cp $documento_cifrado ../$documento_cifrado
cp $assinatura_cifrada ../$assinatura_cifrada
cp $chave_simetrica_cifrada ../$chave_simetrica_cifrada
echo "Arquivos transmitidos."
echo "Arquivos movidos: "
echo "$documento_cifrado para ../$documento_cifrado"
echo "$assinatura_cifrada para ../$assinatura_cifrada"
echo "$chave_simetrica_cifrada para ../$chave_simetrica_cifrada"
