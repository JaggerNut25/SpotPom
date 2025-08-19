# 🎵 SpotPom - Timer Pomodoro avec Spotify

<div align="center">

![SpotPom Logo](https://img.shields.io/badge/SpotPom-🎵-ff0080?style=for-the-badge)
![Status](https://img.shields.io/badge/STATUS-MVP_READY-00ff41?style=for-the-badge)
![License](https://img.shields.io/badge/LICENSE-MIT-00d4ff?style=for-the-badge)

**Une application de timer Pomodoro moderne avec intégration Spotify et synchronisation multi-appareils**

   ### How to proceed ?
Run these command lines
- [ ] ```git clone https://github.com/JaggerNut25/SpotPom.git```
- [ ] ```cd SpotPom```
- [ ] ```flutter clean && flutter packages get```
- [ ] ```flutter run```

git clone https://github.com/JaggerNut25/SpotPom.git
cd SpotPom

2. **Installer les dépendances**
```bash
npm install
```

3. **Configuration Supabase**
```bash
# Créer un fichier .env.local
NEXT_PUBLIC_SUPABASE_URL=votre_url_supabase
NEXT_PUBLIC_SUPABASE_ANON_KEY=votre_clé_publique
SUPABASE_SERVICE_ROLE_KEY=votre_clé_service
```

4. **Démarrer l'application**
```bash
npm run dev
```

L'application sera disponible sur `http://localhost:3000`

## 🏗️ Architecture technique

### Frontend (React + TypeScript)
- **Framework**: React 18 avec TypeScript
- **UI**: Tailwind CSS v4 + shadcn/ui
- **State Management**: React hooks + Context
- **Authentification**: Supabase Auth
- **Charts**: Recharts
- **Notifications**: Sonner

### Backend (Supabase + Deno)
- **Database**: PostgreSQL (Supabase)
- **API**: Deno Edge Functions (Hono framework)
- **Auth**: Supabase Auth avec OAuth Google
- **Storage**: Supabase KV Store
- **Sync**: WebSocket temps réel

### Structure des fichiers
```
/
├── components/          # Composants React
│   ├── ui/             # Composants UI réutilisables
│   ├── AuthScreen.tsx  # Écran d'authentification
│   ├── PomodoroTimer.tsx # Timer principal
│   ├── Statistics.tsx  # Dashboard statistiques
│   └── ...
├── supabase/functions/ # Edge Functions backend
├── styles/            # Styles globaux Tailwind
├── utils/            # Utilitaires et configuration
└── services/         # Services API
```

## 📱 Version mobile (Flutter)

Une version Android native est en développement ! Consultez le [Guide Flutter](./FLUTTER_GUIDE.md) pour plus de détails.

### Fonctionnalités mobiles
- Notifications natives Android
- Widgets de home screen
- Mode arrière-plan
- Synchronisation avec version web

## 🎨 Design System

### Thème Cyberpunk
- **Couleurs primaires**: Cyan (#00FFFF), Magenta (#FF0080), Vert néon (#00FF41)
- **Backgrounds**: Dégradés sombres avec effets de grille
- **Effets**: Glow boxes, animations fluides, glassmorphism
- **Typography**: Inter avec espacement personnalisé

### Composants principaux
- Cards avec bordures néon et backdrop blur
- Boutons avec effets de hover et gradients
- Progress bars animées
- Graphiques avec couleurs cyberpunk

## 🔧 Configuration avancée

### Spotify Integration
Pour activer l'intégration Spotify complète :

1. Créer une app sur [Spotify for Developers](https://developer.spotify.com/)
2. Configurer les redirect URIs
3. Ajouter les variables d'environnement :
```env
SPOTIFY_CLIENT_ID=votre_client_id
SPOTIFY_CLIENT_SECRET=votre_client_secret
```

### Google OAuth
Pour l'authentification Google :

1. Configurer OAuth dans la [Google Console](https://console.cloud.google.com/)
2. Ajouter les domaines autorisés dans Supabase
3. Suivre le guide : [Supabase Google OAuth](https://supabase.com/docs/guides/auth/social-login/auth-google)

## 📊 API Documentation

### Endpoints principaux

#### Authentification
```http
POST /make-server-7904c7b8/auth/signup
Content-Type: application/json

{
  "email": "user@example.com",
  "password": "password123",
  "name": "John Doe"
}
```

#### Sessions Pomodoro
```http
POST /make-server-7904c7b8/sessions/start
Authorization: Bearer TOKEN

{
  "type": "work",
  "duration": 1500,
  "device_info": {...}
}
```

#### Statistiques
```http
GET /make-server-7904c7b8/statistics
Authorization: Bearer TOKEN
```

Voir le [fichier backend](./supabase/functions/server/index.tsx) pour la documentation complète.

## 🤝 Contribution

Les contributions sont les bienvenues ! Voici comment participer :

1. Fork le projet
2. Créer une branche feature (`git checkout -b feature/AmazingFeature`)
3. Commit vos changements (`git commit -m 'Add AmazingFeature'`)
4. Push vers la branche (`git push origin feature/AmazingFeature`)
5. Ouvrir une Pull Request

### Guidelines
- Suivre les conventions TypeScript/React
- Ajouter des tests pour les nouvelles fonctionnalités
- Mettre à jour la documentation si nécessaire

## 📈 Roadmap

### Version 1.1
- [ ] Intégration Spotify complète avec Web Playback SDK
- [ ] Mode focus avancé avec bloquage de sites
- [ ] Statistiques d'équipe et collaboration
- [ ] Thèmes personnalisables supplémentaires

### Version 1.2
- [ ] Application mobile iOS
- [ ] Intégration Apple Music
- [ ] Mode offline complet
- [ ] Analytics avancées avec IA

### Version 2.0
- [ ] Version desktop (Electron/Tauri)
- [ ] Plugin pour IDE (VS Code, IntelliJ)
- [ ] API publique pour développeurs
- [ ] Marketplace de thèmes et sons

## 🐛 Bugs connus

- [ ] Les notifications peuvent ne pas fonctionner sur certains navigateurs
- [ ] La sync temps réel peut avoir un délai sur connexion lente
- [ ] Les graphiques peuvent être lents avec beaucoup de données

## 📄 License

Ce projet est sous licence MIT. Voir le fichier [LICENSE](LICENSE) pour plus de détails.

## 💬 Support

- **Issues**: [GitHub Issues](https://github.com/votre-nom/spotpom/issues)
- **Discussions**: [GitHub Discussions](https://github.com/votre-nom/spotpom/discussions)
- **Email**: support@spotpom.app

---

<div align="center">

**Fait avec ❤️ par l'équipe SpotPom**

[🌟 Star le projet](https://github.com/votre-nom/spotpom) • [🐛 Reporter un bug](https://github.com/votre-nom/spotpom/issues) • [💡 Suggérer une feature](https://github.com/votre-nom/spotpom/discussions)

</div>