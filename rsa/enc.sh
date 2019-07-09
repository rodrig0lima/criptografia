
echo "Informe o nome do arquivo a ser criptografado: (Default: textoplano.txt)"
read entrada
if [ -z $entrada ]; then
    entrada="textoplano.txt"
fi
echo "Informe o nome do arquivo de saida: (Default: textocifrado.enc)"
read saida
if [ -z $saida ]; then
    saida="textocifrado.enc"
fi
echo "Informe a chave publica: (Default: chave_publica.pem): "
read chave
if [ -z $chave ]; then
    chave="chave_publica.pem"
fi
openssl rsautl -encrypt -inkey $chave -pubin -in $entrada -out $saida
echo "Comando executado:"
echo "openssl rsautl -encrypt -inkey $chave -pubin -in $entrada -out $saida"
echo ""
echo "Arquivo cifrado: rsa/$saida"
echo "=========================="
xxd $saida
echo ""
echo "=========================="
echo "Pressione enter para continuar..."
read a
