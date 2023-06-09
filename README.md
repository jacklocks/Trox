# README

<h1>Description du projet</h1>

<ol>
  <h2><li>Présentation</li></h2>
    <p>Propriétaire ou locataire, nous sommes tous conforntés aux travaux, avec plus ou moins de talent et d'expérience. En effet, que ce soit pour planter un simple clou ou pour couler une dalle en béton, nous avons tous besoin d'outils. <br>Les outils, ça coûte (très) cher ! Après avoir visité plsuieurs site d'achat et de location de référence dans le milieu, nous avons constaté que tous les ménages ne sont pas forcément en capacité de payer des frais parfois monumentaux. Pourtant, de nombreuses machines et outils prennent la poussière dans nos garages et dans ceux de nos voisins, ce qui peut paraître paradoxal lorsque nous constatons la forte demande !<br>C'est ainsi qu'est né "Trox", une page dédiée à tous ces gens qui ont besoin, parfois d'urgence, d'une machine ou d'un outil. Nous véhiculons par le biais de ce site des valeurs de solidarité et d'entraide, c'est pourquoi les emprunts sont gratuits, moyennant une caution en cas de dégradation des objets.<br>De plus, Trox est un vecteur de recontre avec des gens qui vivent autour de nous, parfois des vosins dont nous ne savons rien, et qui se révèleront être de précieux aliés, prodiguant des conseils, apportant même parfois leur aide !<br>En bref, Trox se veut être une référence dans le domaine de l'échange et du partage !</p>
  
  <h2><li>Parcours utilisateur</li></h2>
    <p>Voici les différentes fonctionnalités qui se présenteront aux utilisateurs de Trox:</p>
    <ul>
      <li>Création et connexion à un compte</li>
      <li>Modification du profil, suppression de ce dernier</li>
      <li>Accès en tant que visiteur connecté ou non à une page d'accueil présentant le site, et à une page "A propos" décrivant sa philosophie.</li>
      <li>En tant qu'utilisateur connecté je peux créer une annonce de prêt d'objet, je peux emprunter un outil sur des dates définies si ce dernier n'est pas déjà pris. Je peux voir l'historique de mes différents prêts et emprunts. J'ai également la possibilité de modifier les dates d'un emprunt, voire même de supprimer ce dernier si je n'ai plus besoin de l'objet.</p>
    </ul>

  <h2><li>L'administrateur</li></h2>
    <p>Un administrateur (les créateurs et modérateurs du site) ont accès via des identifiants spécifiques à une session leur permettant de créer des outils, de supprimer n'importe quel outil ou prêt. Il est également capable de modifier toutes les annonces existantes. Enfin, il a la possibilité de supprimer le compte d'un utilisateur ne respectant pas les valeurs véhiculées par Trox.</p>
  
  <h2><li>Schéma du parcours utilisateur</li><h2>
    <img src="/images/user_story.jpg" alt="User_story"/>
  
  <h2><li>Point technique</li></h2>
    <p>Torx est un site entièrement responsive pour que l'utilisateur y ait accès partout. En effet, il est difficile de se promener sur un chantier avec un ordinateur portable. Nous avons donc pensé notre plateforme d'échange afin que, dès qu'un besoin apparaît, le bricoleur sorte son téléphone de sa poche et trouve directement ce dont il a besoin.</p>

  <ul>
    <li>Afin de gérer notre base de données, nous utilisons le système PostgreSQL. Nous avons trois models principaux : les users (utilisateurs du site, pouvant à la fois être emprunteurs et prêteurs), les tools (ce qui va concerner les outils) et les loans (une table qui traitera des emprunts de matériel, créant donc un lien entre les deux entités citées précédemment).</li>
    <li>Front-end : Nous avons principalement utilisé Bootstrap afin de gérer l'aspect "responsive" du site. Un thème "greyscale"a été appliqué sur l'intégralité du site. Les couleurs nous semblaient en adéquation avec le thème, et nous mettions un point d'honneur à ce que le dépot, la recherche et l'emprunt des outils se fassent en un minimum de clics, car sur un chantier, le temps joue souvent contre l'ouvrier !</li>
    <li>Back-end :Nous avons travaillé suivant le modèle MVC(Model, View, Controller). Les technologies chosies pour ce projet sont en grande majorité celles étudiées lors de notre cursus à The Hacking Project, c'est à dire l'utilisation de Ruby On Rails et son système de "gems". La gem Devise nous a permis de générer tout un système de création-gestion de l'utilisateur. Nous avons implémenté un "mailer" qui envoie des confirmations aux utilisateurs lors des emprunts et prêts d'outils. Une gem "activadmin" met en place la session administrateur branchée au site. D'autres gems apportent des fonctionnalités mineures, pouvant être trouvées dans le fichier "Gemfile". </li>
    <li>Une API majeure du site : Une carte a été implémentée de façon à localiser son annonce. Grâce à cette carte, un utilisateur peut situer précisément où se trouve l'outil à emprunter. Nous avons pour cela utilisé une gem nommée "Mapbox", qui comme son nom l'indique affiche une carte. Cette dernière est elle-même liée à "Geocoder" qui traduit les informations saisies par l'utilisateur (les coordonnées) afin de placer les points sur la carte.</li>
  </ul>

  <h2><li>Version minimaliste fonctionnelle</li></h2>
    <p>Il sera possible de :</p>
      <ul>
        <li>Créer un compte, le modifier, le supprimer</li>
        <li>Déposer une annonce, la supprimer, la modifier</li>
        <li>Réserver un objet sur des dates définies par l'emprunteur</li>
        <li>Modifier une réservation</li>
      </ul>
  
  <h2><li>Version finale</li></h2>
    <p>Sur Trox, nous pouvons :</p>
      <ul>
        <li>Faire tout ce qui était possible dans la première version</li>
        <li>Constater qu'une attention particulière aura été apportée au style général de la page, avec l'application d'un thème</li>
        <li>Naviguer vers des pages de contact et de présentation du site via une barre de navigation et un footer </li>
        <li>Nous connecter sur une session administrateur qui aura la main sur tout le site</li>
        <li>Voir où se situent les outils grâce à une carte</li>
        <li>Rechercher des outils par localisation et par nom grâce à une barre de recherche</li>
        <li>Accéder à un historique de nos emprunts et de nos prêts</li>
      </ul>

  <h2><li>Notre mentor</li></h2>
    <p>Mathias Prost nous accompagnera tout au long de l'élaboration de notre projet.</p>
  
  <h2><li>Notre équipe</li></h2>
    <p>Notre équipe est composée de 5 membres :</p>
      <ul>
        <li>Benjamin Alcade</li>
        <li>Pierrick Cadoret</li>
        <li>Maxime Gillot</li>
        <li>Éric Castets</li>
        <li>Julien Dast</li>
      </ul>
    <p>Nous ne sommes pour l'instant pas à la recherche de nouveaux membres, mais si le site venait à prendre plus d'ampleur nous aurions certainement besoin de modérateurs pour gérer le contenu mis en ligne par les utilisateurs. D'autres fonctions peuvent être implémentées par la suite, n'hésitez-pas à nous suggérer vos idées via le lien dans le footer de notre site. Bienvenue dans la communauté Trox !</p>

  <h2><li>Lien de mise en production</li></h2>
    <ul>
      <li>https://troxfr.herokuapp.com/</li>
    </ul>
</ol>
  
