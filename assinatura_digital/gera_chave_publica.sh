echo "Informe o local da chave privada: (Default: chave_privada.pem)"
read entrada
if [ -z $entrada ]; then
    entrada="chave_privada.pem"
fi
echo "Informe o nome da chave publica: (Default: chave_publica.pem)"
read saida
if [ -z $saida ]; then
    saida="chave_publica.pem"
fi
openssl rsa -in $entrada -out $saida -outform PEM -pubout
echo "Comando executado:"
echo "openssl rsa -in $entrada -out $saida -outform PEM -pubout"
echo ""
echo "Chave pública: rsa/$saida"
cat $saida
echo ""
echo "Pressione enter para continuar..."
read a
