echo "Informe o nome do arquivo de saída: (Default: chave_privada.pem)"
read saida
if [ -z $saida ]; then
    saida="chave_privada.pem"
fi
echo "Informe a quantidade de bits da chave: (Default: 1024)"
read bits
if [ -z $bits ]; then
    bits="1024"
fi
openssl genrsa -out $saida $bits
echo "Comando executado:"
echo "openssl genrsa -out $saida $bits"
echo ""
echo "Chave privada: rsa/$saida"
cat $saida
echo ""
echo "Pressione enter para continuar..."
read a
