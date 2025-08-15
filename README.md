# Pipeline de CI/CD e Infraestrutura como Código (IaC)

### Descrição
Este projeto demonstra a construção de uma mini-pipeline completa para uma aplicação web simples em Python com Flask. O objetivo é automatizar o processo de construção, teste e entrega do software, garantindo a segurança e a qualidade do código antes do deploy.

### Tecnologias Utilizadas
- **Python**
- **Flask** 
- **Docker**
- **Git**
- **GitHub Actions**
- **Docker Hub**
- **Trivy**

### Principais Funcionalidades
Este projeto cobre os seguintes tópicos práticos e cruciais para um profissional de DevOps:

- **Infraestrutura como Código (IaC):** O `Dockerfile` define a infraestrutura e o ambiente de forma programática, garantindo consistência e portabilidade.
- **Pipeline de CI/CD Automatizada:** A pipeline no GitHub Actions é ativada a cada `git push`, automatizando as etapas de build, segurança e push para o registro.
- **Análise de Vulnerabilidades:** A pipeline inclui um passo que utiliza o Trivy para escanear a imagem em busca de vulnerabilidades, impedindo que imagens inseguras sejam criadas.
- **Monitoramento e Análise de Causa Raiz:** A aplicação possui um `endpoint` de `health check` (`/healthz`) para monitoramento. Simulações de bugs foram realizadas para praticar a análise e depuração de falhas através dos logs da pipeline.

### Como Executar o Projeto
Para rodar este projeto localmente, siga os passos abaixo:

1.  Clone o repositório:
    ```bash
    git clone [https://github.com/walacerogomes/meu-devops-lab.git](https://github.com/walacerogomes/meu-devops-lab.git)
    cd meu-devops-lab
    ```
2.  Construa a imagem Docker:
    ```bash
    docker build -t meu-app-flask .
    ```
3.  Execute o container:
    ```bash
    docker run -p 5000:5000 meu-app-flask
    ```
4.  Acesse a aplicação no seu navegador em `http://localhost:5000`.

### Captura de Tela da Pipeline

Abaixo a captura de tela da Pipeline de CI/CD Concluida com sucesso, pipeline falhando por vulnerabilidade e pipeline concluida com a correção de segurança.

![Captura de Tela](https://i.imgur.com/9G70XGZ.png)
  
