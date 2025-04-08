class Landscape {
  final String name;
  final String imageName;
  final String tag;
  final String location;
  final String region;
  final String overview;
  bool isFavorite;

  Landscape({
    required this.name,
    required this.imageName,
    required this.tag,
    required this.location,
    required this.region,
    required this.overview,
    required this.isFavorite
  });
}

// SAMPLE DATA
final List<Landscape> sampleDataLandscape = [
  Landscape(name: 'Tre Cime di Lavaredo', imageName: 'assets/images/tre_cime_di_lavaredo.jpg', tag: 'Montagna', location: 'Auronzo di Cadore (BL)', region: 'Veneto', overview: 'Le Tre Cime di Lavaredo in Alto Adige sono il simbolo delle Dolomiti e un vero Highlight paesaggistico nella zona delle 3 Cime nelle Dolomiti. Le 3 Cime di Lavaredo si trovano nel Parco Naturale Tre Cime e, insieme ad altre cime dolomitiche, nel 2009 sono state dichiarate Patrimonio dell’Umanità dall’UNESCO.', isFavorite: false),
  Landscape(name: 'Diga del Gleno', imageName: 'assets/images/diga_del_gleno.jpg', tag: 'Montagna', location: 'Vilminore di Scalve (BG)', region: 'Lombardia',overview: 'La diga del Gleno era uno sbarramento realizzato sul torrente Gleno, nel comune di Vilminore, in Valle di Scalve (Bergamo). Il primo dicembre del 1923, quando l’invaso si era completamente riempito da poche ore, nel mezzo della diga si aprì un enorme squarcio. La Diga crollò, riversando a valle milioni di metri cubi d’acqua che travolsero e cancellarono interi paesi (sia della provincia di Bergamo che di Brescia), causando centinaia di vittime. Di quella che doveva essere la prima diga al mondo realizzata “mischiando” due tipologie costruttive, a gravità e ad archi multipli, rimangono oggi solo due tronconi, resti della diga e monumento a una delle più grandi tragedie della Bergamasca. La Valle della Diga del Gleno, che si trova a 1.534 metri di altitudine, è oggi una meta turistica: il laghetto, che si trova alle spalle dei resti della diga, è la meta ogni anno di centinaia di appassionati di montagna, che arrivano qui alla ricerca di una giornata da passare tra storia e natura.', isFavorite: true),
  Landscape(name: 'Passo Giau', imageName: 'assets/images/passo_giau.jpg', tag: 'Montagna', location: 'Colle Santa Lucia (BL)', region: 'Veneto',overview: 'Il Passo Giau o Passo di Giau è una forcella che mette in comunicazione la città di Cortina d\'Ampezzo con Selva di Cadore e la Val Fiorentina e Colle Santa Lucia, tutte situate in territorio bellunese. È un passo particolarmente panoramico e tra i più elevati delle Dolomiti: da qui si possono scorgere le vette più belle, alcune Patrimonio dell’Umanità. Per i suoi tornanti, richiama ogni anno appassionati ciclisti e motociclisti, che ripercorrono queste curve meta anche del Giro d\'Italia. In estate, si possono intraprendere diverse escursioni, in inverno è paradiso per lo snowkite.', isFavorite: false),
  Landscape(name: 'Lago di Braies', imageName: 'assets/images/lago_di_braies.jpg', tag: 'Lago', location: 'Braies (BZ)', region: 'Trentino Alto Adige',overview: 'Il Lago di Braies, incastonato tra le maestose Dolomiti, è una delle perle più affascinanti dell’Alto Adige. Le sue acque turchesi riflettono le imponenti vette circostanti, creando un paesaggio da cartolina in ogni stagione. In estate, è il punto di partenza ideale per escursioni e gite in barca, mentre in inverno il lago ghiacciato regala un’atmosfera fiabesca. Un sentiero panoramico lo abbraccia completamente, offrendo viste spettacolari e momenti di pura tranquillità. Oggi, è una delle mete più amate da viaggiatori e fotografi, grazie alla sua bellezza incontaminata e alla magia che lo avvolge.', isFavorite: true),
  Landscape(name: 'Lago di Carezza', imageName: 'assets/images/lago_di_carezza.jpg', tag: 'Lago', location: 'Nova Levante (BZ)', region: 'Trentino Alto Adige',overview: 'Il Lago di Carezza è un piccolo lago aplino situato a 1534 mslm nell\'alta Val d\'Ega nel comune di Nova Levante. È incastonato tra fitti boschi di abeti, sotto le pendici del massiccio del Latemar, che si specchia nella sua acqua limpida. Il lago è noto per i suoi colori e per questo nella lingua ladina viene chiamato anche "Lec de Ergobando" cioè "Lago dell\'Arcobaleno". È privo di immissari visibili ed è alimentato da sorgenti sotterranee. La sua estensione e profondità variano a seconda della stagione.', isFavorite: false),
  Landscape(name: 'Cascata delle Marmore', imageName: 'assets/images/cascata_delle_marmore.jpg', tag: 'Cascata', location: 'Terni (TR)', region: 'Umbria',overview: 'La Cascata delle Marmore è formata dal Velino e dal Nera, affluenti del Tevere, nei pressi di Terni. A flusso controllato, è la più alta cascata artificiale d’Europa e tra le più alte del mondo, potendo contare su un dislivello complessivo di 165m suddiviso in tre salti. Il nome deriva dai sali di carbonato di calcio presenti sulle rocce e simili a marmo bianco. Fa parte del parco fluviale del Nera.', isFavorite: true),
  Landscape(name: 'Lama Monachile', imageName: 'assets/images/polignano_a_mare.jpg', tag: 'Mare', location: 'Polignano a Mare (BA)', region: 'Puglia', overview: '', isFavorite: false),
  Landscape(name: 'Manarola', imageName: 'assets/images/manarola.jpg', tag: 'Mare', location: 'Riomaggiore (SP)', region: 'Liguria', overview: '', isFavorite: true),
  Landscape(name: 'Foresta del Cansiglio', imageName: 'assets/images/foresta_del_cansiglio.jpg', tag: 'Foresta', location: 'Alpago (BL)', region: 'Veneto', overview: '', isFavorite: true)
];