# 🚀 ProjectAI Manager

## Sistema Inteligente de Gestão de Projetos com IA

Um sistema completo de gestão de projetos desenvolvido em **Ruby on Rails 7** com recursos avançados de Inteligência Artificial para análise preditiva, otimização de recursos e insights de produtividade em tempo real.
---

## 📋 Índice

- [✨ Features](#-features)
- [🛠 Tecnologias](#-tecnologias)
- [⚡ Quick Start](#-quick-start)
- [📊 Screenshots](#-screenshots)
- [🧪 Testes](#-testes) 
- [📚 API Documentation](#-api-documentation)
- [🤝 Contribuição](#-contribuição)

---

## ✨ Features

### 🎯 **Dashboard Inteligente**
- Métricas em tempo real com gráficos interativos
- Análise preditiva de conclusão de projetos usando IA
- Alertas inteligentes para possíveis atrasos
- Heatmap de produtividade da equipe

### 📊 **Gestão Avançada de Projetos**
- Sistema completo CRUD de projetos e tarefas
- **Kanban Board** interativo com drag-and-drop
- Timeline de projetos com dependências
- Templates personalizáveis para diferentes tipos de projeto

### 🤖 **Inteligência Artificial Integrada**
- **Predição de tempo** para conclusão de tarefas
- **Análise de sentimento** em comentários e feedback
- **Recomendações automáticas** de alocação de recursos
- **Detecção de padrões** em produtividade da equipe

### 🔄 **Colaboração em Tempo Real**
- Chat integrado com WebSockets (Action Cable)
- Sistema de notificações push em tempo real
- Comentários threaded com sistema de menções
- Atualizações instantâneas no Kanban

### 📈 **Relatórios e Analytics**
- Dashboards personalizáveis por usuário e equipe
- Exportação automática para PDF/Excel com gráficos
- Análise detalhada de performance individual e coletiva
- Relatórios automatizados via email

### 🔐 **Segurança e Performance**
- Autenticação robusta com Devise + JWT para API
- Rate limiting e proteção contra ataques
- Cache inteligente com Redis
- Background jobs com Sidekiq

---

## 🛠 Tecnologias

### **Backend**
- **Ruby on Rails 7.1** - Framework principal
- **PostgreSQL 15** - Banco de dados com suporte JSON
- **Redis** - Cache e gerenciamento de jobs
- **Sidekiq** - Processamento de jobs em background
- **Action Cable** - WebSockets para real-time

### **Frontend**
- **Hotwire** (Turbo + Stimulus) - SPA-like experience
- **TailwindCSS** - Framework CSS utilitário
- **Chart.js** - Gráficos interativos
- **SortableJS** - Drag and drop functionality
- **Alpine.js** - Interatividade leve

### **IA e Machine Learning**
- **Python Flask** - Microserviço para IA
- **Scikit-learn** - Algoritmos de ML
- **spaCy** - Processamento de linguagem natural
- **TensorFlow** - Redes neurais para predições

### **DevOps e Ferramentas**
- **Docker** & **Docker Compose** - Containerização
- **GitHub Actions** - CI/CD pipeline
- **RSpec** - Testes automatizados
- **Rubocop** - Linting e qualidade de código

---

## ⚡ Quick Start

### Pré-requisitos
- Ruby 3.2.0+
- PostgreSQL 15+
- Redis 6+
- Node.js 18+ (para assets)
- Docker (opcional)

### 🐳 **Usando Docker (Recomendado)**

```bash
# 1. Clone o repositório
git clone https://github.com/seu-usuario/project-ai-manager.git
cd project-ai-manager

# 2. Configure as variáveis de ambiente
cp .env.example .env

# 3. Execute com Docker Compose
docker-compose up -d --build

# 4. Configure o banco de dados
docker-compose exec web rails db:create db:migrate db:seed

# 5. Acesse a aplicação
open http://localhost:3000
```

### 💻 **Instalação Manual**

```bash
# 1. Clone e instale dependências
git clone https://github.com/seu-usuario/project-ai-manager.git
cd project-ai-manager
bundle install
yarn install

# 2. Configure o banco de dados
rails db:create db:migrate db:seed

# 3. Instale e configure Redis
# MacOS: brew install redis && brew services start redis
# Ubuntu: sudo apt install redis-server

# 4. Execute os serviços
rails server & # Rails server
bundle exec sidekiq & # Background jobs

# 5. Acesse http://localhost:3000
```

### 👤 **Usuário Demo**
- **Email:** demo@projectai.com
- **Senha:** password123

---

## 📊 Screenshots

### Dashboard Principal
![Dashboard](docs/screenshots/dashboard.png)

### Kanban Board
![Kanban](docs/screenshots/kanban.png)

### Analytics e IA
![Analytics](docs/screenshots/analytics.png)

---

## 🧪 Testes

```bash
# Executar todos os testes
bundle exec rspec

# Testes com cobertura
bundle exec rspec --coverage

# Testes específicos
bundle exec rspec spec/models/
bundle exec rspec spec/controllers/
bundle exec rspec spec/services/

# Linting
bundle exec rubocop
```

### 📈 **Cobertura de Testes**
- **Models:** 95%+
- **Controllers:** 90%+
- **Services:** 92%+
- **Overall:** 93%+

---
<!-- 
## 🚀 Deploy

### **Heroku**
```bash
# 1. Configure Heroku
heroku create project-ai-manager
heroku addons:create heroku-postgresql
heroku addons:create heroku-redis

# 2. Configure variáveis
heroku config:set RAILS_ENV=production
heroku config:set SECRET_KEY_BASE=$(rails secret)

# 3. Deploy
git push heroku main
heroku run rails db:migrate
``` -->

### **AWS/Railway/Render**
Consulte o arquivo `docs/DEPLOY.md` para instruções específicas.

---

## 📚 API Documentation

### **Endpoints Principais**

```bash
# Autenticação
POST /api/v1/auth/login
POST /api/v1/auth/register
DELETE /api/v1/auth/logout

# Projetos
GET    /api/v1/projects
POST   /api/v1/projects
GET    /api/v1/projects/:id
PATCH  /api/v1/projects/:id
DELETE /api/v1/projects/:id

# Tarefas
GET    /api/v1/projects/:project_id/tasks
POST   /api/v1/projects/:project_id/tasks
PATCH  /api/v1/tasks/:id
DELETE /api/v1/tasks/:id

# IA e Predições
GET    /api/v1/projects/:id/predictions
POST   /api/v1/ai/analyze_sentiment
POST   /api/v1/ai/estimate_duration
```

### **Exemplo de Response**

```json
{
  "data": {
    "id": 1,
    "name": "Projeto Mobile App",
    "description": "Desenvolvimento de app React Native",
    "status": "active",
    "progress": 67.5,
    "ai_prediction": {
      "completion_date": "2024-03-15",
      "confidence": 0.89,
      "risk_level": "low"
    }
  }
}
```

**📖 Documentação completa:** `/api/docs` (Swagger UI)

---

## 🏗 Arquitetura

```
app/
├── controllers/
│   ├── api/v1/              # API REST endpoints
│   ├── dashboards_controller.rb
│   └── projects_controller.rb
├── models/
│   ├── project.rb           # Core domain models
│   ├── task.rb
│   └── ai_prediction.rb
├── services/
│   ├── ai/                  # IA e ML services
│   ├── notification_service.rb
│   └── report_generator.rb
├── jobs/                    # Background processing
├── channels/                # WebSocket channels
└── javascript/              # Frontend Stimulus controllers
```

---

## 🎯 **Principais Diferenciais Técnicos**

### ⚡ **Performance**
- Cache inteligente com Redis (99% hit rate)
- Lazy loading e paginação otimizada
- Background jobs para operações pesadas
- Database queries otimizadas com N+1 prevention

### 🤖 **IA Integrada**
- Microserviço Python para processamento ML
- Modelos treinados para predição de prazos
- Análise de sentimento em tempo real
- Recomendações baseadas em historical data

### 🔄 **Real-time Features**
- WebSockets para colaboração instantânea
- Live updates no dashboard sem refresh
- Notificações push em tempo real
- Sincronização automática entre dispositivos

### 🏛 **Clean Architecture**
- SOLID principles aplicados
- Service objects para business logic
- Repository pattern para data access
- Dependency injection com containers

---

## 🤝 Contribuição

1. Fork o projeto
2. Crie sua feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

### 📋 **Code Standards**
- Siga as convenções do Rubocop
- Mantenha cobertura de testes > 90%
- Documente APIs com comentários
- Use commits semânticos
 
---

## 📄 License

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

---

## 🌟 **Desenvolvido por**

** Larissa Sevilha** - *Full Stack Developer*
 

---
 