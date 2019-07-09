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
echo "Informe a chave: (Default: e52e9f0176a344cb): "
read chave
if [ -z $chave ]; then
    chave="e52e9f0176a344cb"
fi
openssl enc -des -in $entrada -out $saida -iv 0000000000000000 -K $chave -d
echo "Comando executado: "
echo "openssl enc -des -in $entrada -out $saida -iv 0000000000000000 -K $chave -d"
echo ""
echo "Arquivo decifrado: des/$saida"
echo "========================"
cat $saida
echo "========================"
echo "Pressione enter para continuar..."
read a
