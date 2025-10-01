# 🛠️ Projeto de Banco de Dados – Oficina Mecânica

## 📋 Descrição do Desafio

Neste projeto, foi criado o **esquema lógico** e implementação de um **banco de dados relacional** para uma oficina mecânica.  
O objetivo é consolidar todo o processo, desde a **modelagem conceitual (ER)** até a implementação do banco de dados, incluindo persistência de dados e consultas SQL avançadas.

💡 **Habilidades demonstradas:**
- Criação de esquemas relacionais
- Implementação de tabelas com integridade referencial
- Inserção de dados para testes
- Consultas SQL avançadas com `JOIN`, `GROUP BY`, `HAVING` e atributos derivados

---

## 🗂️ Esquema Lógico

### Tabelas Principais

| Tabela | Descrição | Campos Principais |
|--------|-----------|-----------------|
| **Cliente** | Armazena informações dos clientes | `idcliente` (PK), `nome`, `sobrenome`, `telefone`, `email` |
| **Veículo** | Informações dos veículos atendidos | `idveiculo` (PK), `marca`, `modelo`, `ano`, `idcliente` (FK) |
| **Mecânico** | Profissionais responsáveis pelos serviços | `idmecanico` (PK), `nome`, `especialidade` |
| **Serviço** | Serviços oferecidos pela oficina | `idservico` (PK), `descricao`, `valor` |
| **OrdemDeServico** | Registro dos serviços realizados | `idordem` (PK), `data`, `idveiculo` (FK), `idmecanico` (FK), `status`, `total` (derivado) |
| **ItensOrdem** | Detalhes de serviços por ordem | `iditem` (PK), `idordem` (FK), `idservico` (FK), `quantidade`, `valor_total` (derivado) |

💡 **Observação:** `total` na OrdemDeServico e `valor_total` em ItensOrdem são **atributos derivados**, calculados a partir de valores de serviços.

## 🧩 Persistência de Dados

Exemplos de inserção de dados para testes:

```sql
INSERT INTO Cliente (nome, sobrenome, telefone, email) 
VALUES ('Leandro', 'Venancio', '99999-9999', 'leandro@email.com');

INSERT INTO Veículo (marca, modelo, ano, idcliente) 
VALUES ('Ford', 'Fiesta', 2015, 1);

INSERT INTO Mecânico (nome, especialidade) 
VALUES ('Carlos', 'Motor');

INSERT INTO Serviço (descricao, valor) 
VALUES ('Troca de óleo', 150);

INSERT INTO OrdemDeServico (data, idveiculo, idmecanico, status, total) 
VALUES ('2025-10-05', 1, 1, 'Em andamento', 0);
```


---

## ⚙️ Como Executar o Projeto

Siga os passos abaixo para configurar e testar o banco de dados da oficina:

1. **Clone o repositório**  
```bash
git clone https://github.com/seu-usuario/projeto-oficina.git
```
2. **Acesse a pasta do projeto:**  
```bash
cd projeto-oficina
```
3. **Execute o script SQL para criar o banco de dados:**  
```bash
source script_oficina.sql;
```
4. **Teste consultas**

---

✅ Observações Finais

Este projeto consolida conceitos de:

Modelagem de dados

SQL avançado

Integração de consultas complexas

Tudo em um cenário realista de oficina mecânica.
