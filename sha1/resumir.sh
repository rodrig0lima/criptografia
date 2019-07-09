echo "Informe o nome do arquivo a ser resumido: (Default: textoplano.txt)"
read entrada
if [ -z $entrada ]; then
    entrada="textoplano.txt"
fi
openssl dgst -sha1 $entrada
echo "Comando executado:"
echo "openssl dgst -sha1 $entrada"
echo ""
echo "Pressione enter para continuar..."
read a
