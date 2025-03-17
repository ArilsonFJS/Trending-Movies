# Trending Movies (🚧 EM DESENVOLVIMENTO! 🚧)

Trending Movies é um aplicativo para iOS desenvolvido em Swift que consome a API do The Movie Database (TMDB) para exibir filmes populares. O objetivo é proporcionar aos usuários uma maneira fácil e intuitiva de descobrir os filmes mais populares do momento.

---

🛠 Tecnologias Utilizadas

Swift

UIKit

MVVM (Model-View-ViewModel)

URLSession para requisições HTTP

API TMDB: https://developer.themoviedb.org/docs/getting-started

---

📋 Requisitos

iOS 15.6 ou superior

Xcode 14 ou superior

Conta gratuita no TMDB para obter a chave da API

---


### Instalação

- Clone este repositório:

```
      git clone https://github.com/seu-usuario/trending-movies.git
```

- Abra o projeto no Xcode.

- Crie um arquivo APIKeys.swift dentro da pasta Constants e adicione sua chave da API do TMDB:

```swift
      struct APIConstants {
            static let apiKey = "SUA_CHAVE_AQUI"
}
```

- Compile e execute o projeto no simulador ou dispositivo.

---

### Funcionalidades

🚧 Listagem de filmes populares

🚧 Exibição de detalhes do filme

🚧 Carregamento de imagens dos filmes

---

📂 Estrutura do Projeto

> TrendingMovies/
> > │-- Constants/ (Constantes usadas no projeto)
> > > │-- Extensions/ (Extensões úteis para reutilização de código)
> > > > │-- Models/ (Modelos de dados para os filmes)
> > > > > │-- Services/ (Serviço responsável por chamar a API TMDB)
> > > > > > │-- ViewModels/ (Lógica de apresentação e manipulação dos dados)
> > > > > > > │-- Views/ (Interfaces de usuário e componentes visuais)

---

### Melhorias Futuras 

- Busca de filmes

- Filtragem por gênero

- Favoritos

- Dark mode

---

### Contribuição

Se desejar contribuir, siga estes passos:

- Fork o repositório

- Crie uma nova branch: 
```
  git checkout -b minha-feature
```

- Faça suas modificações e commit: 
```
  git commit -m 'Minha nova feature'
```

- Envie para o repositório: 
```
  git push origin minha-feature
```

- Abra um Pull Request

---

Desenvolvido por Arilson
