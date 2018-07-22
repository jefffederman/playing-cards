# playing_cards

Playing cards in Crystal.

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  playing-cards:
    github: jefffederman/playing-cards
```

## Usage

```crystal
require "playing-cards"
```

To create a new 52 card deck, just use:

```crystal
deck = PlayingCards::Deck.new
```

To shuffle the deck, use:

```crystal
deck.shuffle!
```

Most of the time, you'll want to start with a shuffled deck, so you can use:

```crystal
deck = PlayingCards::Deck.shuffle!
```

To deal cards, use:

```crystal
player_1_cards = deck.deal(3)
```

## Development

There are no development dependencies other than Crystal. Feel free to make pull requests!

## Contributing

1. Fork it (<https://github.com/your-github-user/playing_cards/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [jefffederman](https://github.com/jefffederman) Jeff Federman - creator, maintainer
