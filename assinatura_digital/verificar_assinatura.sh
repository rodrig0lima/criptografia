echo "Informe o local do arquivo assinado: (Default: texto_assinado.txt.sha256)"
read entrada
if [ -z $entrada ]; then
    entrada="texto_assinado.txt.sha256"
fi
echo "Informe o nome do arquivo original: (Default: textoplano.txt)"
read saida
if [ -z $saida ]; then
    saida="textoplano.txt"
fi
echo "Informe a chave publica: (Default: chave_publica.pem): "
read chave
if [ -z $chave ]; then
    chave="chave_publica.pem"
fi
echo "Comando: "
echo "openssl dgst -sha256 -verify $chave -signature $entrada $saida"
echo "Resultado: "
echo ""
openssl dgst -sha256 -verify $chave -signature $entrada $saida
echo ""
echo "Pressione enter para continuar..."
read a
