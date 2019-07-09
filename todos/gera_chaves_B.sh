echo "Informe o nome do arquivo da chave privada de B: (Default: chave_privada_B.pem)"
read chave_privada
if [ -z $chave_privada ]; then
    chave_privada="chave_privada_B.pem"
fi
echo "Informe a quantidade de bits da chave de B: (Default: 1024)"
read bits
if [ -z $bits ]; then
    bits="1024"
fi
echo "Informe o nome do arquivo da chave publica de B: (Default: chave_publica_B.pem)"
read chave_publica
if [ -z $chave_publica ]; then
    chave_publica="chave_publica_B.pem"
fi
openssl genrsa -out $chave_privada $bits
openssl rsa -in $chave_privada -out $chave_publica -outform PEM -pubout
echo "Comandos executados:"
echo "openssl genrsa -out $chave_privada $bits"
echo "openssl rsa -in $chave_privada -out $chave_publica -outform PEM -pubout"
echo ""
echo "Chave privada de B: todos/$chave_privada"
echo "Chave publica de B: todos/$chave_publica"
echo ""
echo "Pressione enter para continuar..."
read a
