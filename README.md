[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/IBCornelsen/database">
    <img src="images/logo.png" alt="Logo" width="80" height="80">
  </a>

<h3 align="center">IBC Storage</h3>

  <p align="center">
    Die Datenbankarchitektur des IBC.
    <br />
    <a href="https://docs.ibcornelsen.de/storage/"><strong>Dokumentation »</strong></a>
    <br />
    <br />
    <a href="https://github.com/IBCornelsen/database">Demo</a>
    ·
    <a href="https://github.com/IBCornelsen/database/issues">Bug gefunden?</a>
    ·
    <a href="https://github.com/IBCornelsen/database/issues">Feature Anfordern</a>
  </p>
</div>

- [Beschreibung](#beschreibung)
	- [Anforderungen](#anforderungen)
	- [Installation](#installation)
- [Nächste Schritte](#nächste-schritte)
- [Beiträge zu unserer Arbeit](#beiträge-zu-unserer-arbeit)
- [License](#license)
- [Kontakt](#kontakt)


## Beschreibung

Dies ist das Repository für die Datenbank des IBCornelsen. Eine Demo kann direkt über GitHub heruntergeladen und mit **Docker** gestartet werden.

Momentan arbeiten wir an der Umsetzung einer neuen, verbesserten Datenbankstruktur die aktuelle Probleme mit Hinsicht auf die Skalierung unserer Architektur lösen wird.

Hier eine Veranschaulichung:

![Datenbankstruktur](images/struktur.png)

### Anforderungen

Die meisten unserer Systeme sind für Ubuntu gedacht und darauf getestet worden. Viele Funktionen werden ebenfalls auf Windows verfügbar sein, allerdings können unerwartetes Verhalten und Fehler nicht ausgeschlossen werden.

Für dieses Projekt benötigst du:

* docker
  * Installationsanleitungen für **docker** kannst du [hier](https://docs.docker.com/engine/install/) finden.
* NodeJS
  * Downloads für Node stehen [hier](https://nodejs.org/en) zur Verfügung.
* Einen Package Manger deiner Wahl, du kannst **NPM**, **pNPM** oder auch **Yarn** verwenden. Wir empfehlen **pNPM** da er in den meisten Situationen schneller ist und dabei das gleiche Feature Set wie **NPM** bietet.

### Installation

1. Klone das Repository

   ```sh
   git clone https://github.com/IBCornelsen/database.git
   ```

2. Führe `docker-compose` aus.

   ```bash
   docker-compose up --build
   ```

## Nächste Schritte

* [ ] Verteilte Datenbankstruktur
* [ ] Performance Optimierungen
* [ ] Umstieg auf PostgreSQL
  * [ ] Umzug der alten Daten

See the [open issues](https://github.com/IBCornelsen/database/issues) for a full list of proposed features (and known issues).

## Beiträge zu unserer Arbeit

Wenn du Ideen, Vorschläge oder sonstige Anmerkungen haben solltest, schreck' nicht davor zurück dein Feature zu implementieren und eine Pull Request zu erstellen, wir sind **immer** offen für neues!

1. Erstelle einen **Fork** des Repos
2. Erstelle einen neuen Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Committe deine Änderungen (`git commit -m 'Add some AmazingFeature'`)
4. Pushe deine Änderungen auf den neuen Branch (`git push origin feature/AmazingFeature`)
5. Öffne eine Pull Request

## License

Veröffentlicht unter der GPL-3.0 Lizenz. Siehe `LICENSE` für mehr Information.

## Kontakt

IBCornelsen - [info@ibcornelsen.de](mailto://info@ibcornelsen.de)

Organisation: [https://github.com/IBCornelsen/database](https://github.com/IBCornelsen/database)

[contributors-shield]: https://img.shields.io/github/contributors/IBCornelsen/database.svg?style=for-the-badge
[contributors-url]: https://github.com/IBCornelsen/database/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/IBCornelsen/database.svg?style=for-the-badge
[forks-url]: https://github.com/IBCornelsen/database/network/members
[stars-shield]: https://img.shields.io/github/stars/IBCornelsen/database.svg?style=for-the-badge
[stars-url]: https://github.com/IBCornelsen/database/stargazers
[issues-shield]: https://img.shields.io/github/issues/IBCornelsen/database.svg?style=for-the-badge
[issues-url]: https://github.com/IBCornelsen/database/issues
[license-shield]: https://img.shields.io/github/license/IBCornelsen/database.svg?style=for-the-badge
[license-url]: https://github.com/IBCornelsen/database/blob/master/LICENSE
