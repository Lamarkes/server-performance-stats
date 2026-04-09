# Logs Stats Server
---


## Este repositorio contem um script de verificaçao de status do sistema, feito para estudar comandos Linux e Bash.

### O script retorna os seguintes logs do sistema:

- Uso da CPU do sistema;
- Total de memoria utilizado pelo sistema;
- Uso do disco do sistema;
- 5 processos mais usados pela CPU;
- 5 processos mais usados na memoria;


## Como usar o script

1. Clone este repositório:
```shell
git clone https://github.com/Lamarkes/server-performace-stats.git
```
2. Acesse a pasta do script:
```shell
cd server-performance-stats
```

3. Torne o script executavel:

```shell
chmod +x server.stats.sh
```

4. Execute o script:

```shell
./server-stats.sh
```
#### O resultado do script irá aparecer no terminal.


## Salvando as informações em um arquivo de texto

### É possível salvar as informações do script em um arquivo de texto, para isso, siga o passo-a-passo:

1. Torne o arquivo executável
```shell
chmod +x log-script.sh
```

2. Execute o arquivo
```shell
./log-script.sh
```

#### Será criado um arquivo chamado 'log.txt' na pasta do projeto. As informações foram salvas no arquivo.
