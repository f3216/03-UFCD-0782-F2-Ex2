echo "A executar os testes ..."
echo

output=$(./a.out)
expected_output="Estou a aprender C."

if [ $? -eq 0 ] ; then
  echo "Aprovado: o programa terminou com retorno zero"
else
  echo "Falha: o programa não retornou zero"
  exit 1
fi

if [ "$output" == "$expected_output" ] ; then
  echo "Aprovado: A saída é correcta"
else
  echo "Esperada a saída '$expected_output' mas o programa devolveu: $output"
  exit 1
fi

echo
echo "Todos os testes terminados com sucesso."

exit 0
