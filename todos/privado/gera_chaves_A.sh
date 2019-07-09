echo "Informe o nome do arquivo da chave privada de A: (Default: chave_privada_A.pem)"
read chave_privada
if [ -z $chave_privada ]; then
    chave_privada="chave_privada_A.pem"
fi
echo "Informe a quantidade de bits da chave de A: (Default: 1024)"
read bits
if [ -z $bits ]; then
    bits="1024"
fi
echo "Informe o nome do arquivo da chave publica de A: (Default: chave_publica_A.pem)"
read chave_publica
if [ -z $chave_publica ]; then
    chave_publica="chave_publica_A.pem"
fi
openssl genrsa -out $chave_privada $bits
openssl rsa -in $chave_privada -out $chave_publica -outform PEM -pubout
echo "Comandos executados:"
echo "openssl genrsa -out $chave_privada $bits"
echo "openssl rsa -in $chave_privada -out $chave_publica -outform PEM -pubout"
echo ""
echo "Chave privada de A: todos/privado/$chave_privada"
echo "Chave publica de A: todos/privado/$chave_publica"
echo ""
echo "Pressione enter para continuar..."
read a
