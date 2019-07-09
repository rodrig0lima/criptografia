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
echo "Informe a chave: (Default: e52e9f0176a344): "
read chave
if [ -z $chave ]; then
    chave="e52e9f0176a344"
fi
openssl enc -aes256 -in $entrada -out $saida -iv 0000000000000000 -K $chave
echo "Comando executado: "
echo "openssl enc -aes256 -in $entrada -out $saida -iv 0000000000000000 -K $chave"
echo ""
echo "Arquivo cifrado: aes/$saida"
echo "=========================="
xxd $saida
echo ""
echo "=========================="
echo "Pressione enter para continuar..."
read a
