
echo "Informe o nome do arquivo a ser decriptografado: (Default: textcifrado.enc)"
read entrada
if [ -z $entrada ]; then
    entrada="textocifrado.enc"
fi
echo "Informe o nome do arquivo de saida: (Default: textodecifrado.txt)"
read saida
if [ -z $saida ]; then
    saida="textodecifrado.txt"
fi
echo "Informe a chave privada: (Default: chave_privada.pem): "
read chave
if [ -z $chave ]; then
    chave="chave_privada.pem"
fi
openssl rsautl -decrypt -inkey $chave -in $entrada -out $saida
echo "Comando executado: "
echo "openssl rsautl -decrypt -inkey $chave -in $entrada -out $saida"
echo ""
echo "Arquivo decifrado: rsa/$saida"
echo "========================"
cat $saida
echo "========================"
echo "Pressione enter para continuar..."
read a
