echo "Informe o nome do arquivo a ser assinado: (Default: textoplano.txt)"
read entrada
if [ -z $entrada ]; then
    entrada="textoplano.txt"
fi
echo "Informe o nome do arquivo de saida: (Default: texto_assinado.txt.sha256)"
read saida
if [ -z $saida ]; then
    saida="texto_assinado.txt.sha256"
fi
echo "Informe a chave privada: (Default: chave_privada.pem): "
read chave
if [ -z $chave ]; then
    chave="chave_privada.pem"
fi
openssl dgst -sha256 -sign $chave -out $saida $entrada
echo "Comando executado:"
echo "openssl dgst -sha256 -sign $chave -out $saida entrada"
echo ""
echo "Arquivo assinado: assinatura_digital/$saida"
echo "=========================="
xxd $saida
echo ""
echo "=========================="
echo "Pressione enter para continuar..."
read a
