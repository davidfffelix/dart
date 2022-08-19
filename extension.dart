void main() {
  String nome = 'joao';
  print(EnumTest.enumValue.toValue());
  print(EnumTest.enumNovo.toValue());
}
enum EnumTest {
  enumValue, enumNovo;
}

extension ExtensionsEnum on Enum {
  String toValue() {
    Map map = {
      EnumTest.enumValue: 'xpto',
      EnumTest.enumNovo: 'novoValor'
    };
    return map[this];
  }
}