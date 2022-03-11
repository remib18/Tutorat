# PHP, qu'est-ce que c'est ?

## Le web, comment ça fonctionne

Pour comprendre comment fonctionne le php et ses différences avec les autres technologies du web, il faut comprendre comment fonctionne le web. _Attention, cette partie est grandement simplifié_

Quand tu vas sur une site web, une requête est envoyé au serveur. C'est à dire que quand tu tapes https://google.fr, ton naviguateur va aller envoyer une requête au serveur correspondant à cette adresse. Par la suite, le serveur va envoyer une réponse s'il existe et est connécté, par exemple "OK j'ai reçut ta demande et je sais comment y répondre, voici la page que tu as demandé".

[Lien vers une animation Figma qui illustre le principe de requette.](https://www.figma.com/file/UvjmcgdQPXjcKlelWG7WYi/Illustrations-PHP?node-id=0%3A1) Le fichier existe bien, tu dois juste te créer un compte :wink:

Ce comportement du serveur de renvoyer un fichier est le cas le plus simple. Mais dans le cas d'une application web avec une 100aine de pages, on comprend bien qu'un autre système est nécessaire.

C'est là qu'interviennent les applications PHP (il y a d'autres technologies qui permettent d'aboutir au même résultat mais on va se concentrer sur celle-ci).
Ce genre d'applicatif serveur va prendre la requête, l'interpréter et ainsi pouvoir générer une page unique à chaque utilisateur !

### Les différences avec les autres langages du Web

Nous avons vu la place de php intéressons-nous au reste.

- HTML: Permet de gérer ce que le navigateur doit afficher à l'écrant
- CSS: Permet de gérer de quelle manière rendre les élément précédents à l'écran
- JS: Permet de rendre les pages interractives

Ces trois technologies sont les seules que le navigateur comprend (webassembly exclu). Tout le reste, le PHP aussi, doit être par la suite retranscrit dans l'un de ces langages.

## Du coup, à quoi ressemble le PHP ?

Il y a deux manière d'utiliser le php, la première c'est au milieu de code HTML (fichier .php).

```php
<table>
  <tr>
    <th>Nom</th>
    <th>Classe</th>
    <th colspan="12">Notes</th>
    <th>Moyenne</th>
  </tr>
  <?php foreach($eleves as $eleve): ?>
  <tr>
    <td><strong><?= $eleve['name'] ?></strong></td>
    <td><?= $eleve['class'] ?></td>
    <?php foreach($eleve['notes'] as $note): ?>
      <td><?= $note ?>/20</td>
    <?php endforeach; ?>
    <td><strong><?= round(array_sum($eleve['notes']) / count($eleve['notes'])) ?></strong>/20
  </tr>
  <?php endforeach; ?>
</table>
```

La seconde, c'est dans des fichiers php, de manière plus classique :

```

<?php
class OpenWeather {

    private $apiKey;

    public function __construct(string $apiKey)
    {
        $this->apiKey = $apiKey;
    }

    public function getToday(string $city): ?array
    {
        $data = $this->callAPI("weather?q={$city}");
        return [
            'temp' => $data['main']['temp'],
            'description' => $data['weather'][0]['description'],
            'date' => new DateTime()
        ];
    }

    public function getForecast(string $city): ?array
    {
        $data = $this->callAPI("forecast/daily?q={$city}");
        foreach($data['list'] as $day) {
            $results[] = [
                'temp' => $day['temp']['day'],
                'description' => $day['weather'][0]['description'],
                'date' => new DateTime('@' . $day['dt'])
            ];
        }
        return $results;
    }

    private function callAPI(string $endpoint): ?array
    {
        $curl = curl_init("http://api.openweathermap.org/data/2.5/{$endpoint}&units=metric&lang=fr&APPID={$this->apiKey}&units=metric&lang=fr");
        curl_setopt_array($curl, [
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_CAINFO => dirname(__DIR__) . DIRECTORY_SEPARATOR . 'cert.cer',
            CURLOPT_TIMEOUT => 1
        ]);
        $data = curl_exec($curl);
        if ($data === false || curl_getinfo($curl, CURLINFO_HTTP_CODE) !== 200) {
            throw new APIException();
        }
        return json_decode($data, true);
    }

}
```

# A suivre

L'introduction est terminée, tu peux soit [retourner à la liste des fiches](../README.md) soit [aller à la prochaine fiche php](./variables-et-types.md).

Ressources pour approfondir :

- [Le module sur le fonctionnement du web du MDN](https://developer.mozilla.org/fr/docs/Learn/Getting_started_with_the_web/How_the_Web_works)

- [Une très bonne vidéo sur le fonctionnement du web (3min)](https://youtu.be/dYgNvn98Nag), la partie sur les CMS ne nous interresse pas.
