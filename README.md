# hubot-aww

Reddit aww integration with Hubot

## Installation

In a hubot project repo, run:

```
npm install hubot-aww2 --save
```

Then add **hubot-aww** to your `external-scripts.json`:

```
[
  "hubot-aww2"
]
```

## Usage

The command `hubot aww [me]` will retrieve a recent post from `/r/aww`.

```
user1>> hubot aww
hubot>> http://example.com/example1.gif
```

There is also a bomb function `hubot aww bomb` will retrive five random
posts from `/r/aww`.

```
user1>> hubot aww
hubot>> http://example.com/example1.gif
hubot>> http://example.com/example2.gif
hubot>> http://example.com/example3.gif
hubot>> http://example.com/example4.gif
hubot>> http://example.com/example5.gif
```


