echo "A executar os testes ..."
echo

output=$(./a.out)
expected_output="Estou a aprender C."

if [ $? -eq 0 ] ; then
  echo "Aprovado: o programa terminou com retorno zero"
  echo "::set-env name=TEST_RESULT::Aprovado"
else
  echo "Falha: o programa não retornou zero"
  echo "::set-env name=TEST_RESULT::Falha"
  exit 1
fi

if [ "$output" == "$expected_output" ] ; then
  echo "Aprovado: A saída é correcta"
  echo "::set-env name=TEST_OUTPUT::Aprovado"
else
  echo "Esperada a saída '$expected_output' mas o programa devolveu: $output"
  echo "::set-env name=TEST_OUTPUT::Falha"
  exit 1
fi

echo
echo "Todos os testes terminados com sucesso."

exit 0
