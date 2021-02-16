void main(List<String> args) {
  var pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];

  List<String> pacientes20 = [];
  List<String> familiaRahman = [];
  List<String> familiaVerne = [];
  List<String> familiaSilva = [];

  for (String paciente in pacientes) {
    List pac = paciente.split('|');
    if (int.parse(pac[1]) > 20) {
      pacientes20.add(paciente);
    }

    if (pac[0].split(' ')[1] == 'Rahman') {
      familiaRahman.add(paciente);
    }

    if (pac[0].split(' ')[1] == 'Verne') {
      familiaVerne.add(paciente);
    }

    if (pac[0].split(' ')[1] == 'Silva') {
      familiaSilva.add(paciente);
    }
  }

  print('Quantidade de pacientes com mais de 20 Anos: ${pacientes20.length}');
  print('-------------------');
  print('Pacientes/Familias ');
  print('-------------------');

  print('Familia Rahman:');
  for (String paciente in familiaRahman) {
    print('  ${paciente.split('|')[0]}');
  }

  print('\nFamilia Verne:');
  for (String paciente in familiaVerne) {
    print('  ${paciente.split('|')[0]}');
  }

  print('\nFamilia Silva:');
  for (String paciente in familiaSilva) {
    print('  ${paciente.split('|')[0]}');
  }
}
