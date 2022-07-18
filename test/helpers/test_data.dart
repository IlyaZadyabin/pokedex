final testGetPokemonResponse = {
  'count': 3,
  'next': 'https://pokeapi.co/api/v2/pokemon?offset=3&limit=20',
  'previous': null,
  'results': [
    {'name': 'bulbasaur', 'url': 'https://pokeapi.co/api/v2/pokemon/1/'},
    {'name': 'ivysaur', 'url': 'https://pokeapi.co/api/v2/pokemon/2/'},
  ]
};

final testFirstPokemon = {
  'id': 1,
  'name': 'bulbasaur',
  'height': 2,
  'weight': 2,
  'sprites': {
    'other': {
      'official-artwork': {
        'front_default':
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png'
      }
    },
  },
  'types': [
    {
      'slot': 1,
      'type': {'name': 'grass', 'url': 'https://pokeapi.co/api/v2/type/12/'}
    },
    {
      'slot': 2,
      'type': {'name': 'poison', 'url': 'https://pokeapi.co/api/v2/type/4/'}
    }
  ],
  'stats': [
    {
      'base_stat': 45,
      'stat': {'name': 'hp'}
    },
    {
      'base_stat': 49,
      'stat': {'name': 'attack'}
    },
  ],
};

final testSecondPokemon = {
  'id': 2,
  'name': 'ivysaur',
  'height': 15,
  'weight': 6,
  'sprites': {
    'other': {
      'official-artwork': {
        'front_default':
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/2.png'
      }
    },
  },
  'types': [
    {
      'slot': 1,
      'type': {'name': 'grass', 'url': 'https://pokeapi.co/api/v2/type/12/'}
    },
    {
      'slot': 2,
      'type': {'name': 'poison', 'url': 'https://pokeapi.co/api/v2/type/4/'}
    }
  ],
  'stats': [
    {
      'base_stat': 11,
      'stat': {'name': 'hp'}
    },
    {
      'base_stat': 39,
      'stat': {'name': 'attack'}
    },
  ],
};
