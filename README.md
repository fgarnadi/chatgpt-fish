# chatgpt-fish

Simple wrapper for ChatGPT in [Fish](https://fishshell.com).

## Installation

Install with [Fisher](https://github.com/jorgebucaran/fisher):

```console
fisher install fgarnadi/chatgpt-fish
```

## Prerequisite

Install [jq](https://github.com/stedolan/jq).

```console
brew install jq
```

Set your OpenAI private key as environment variable.
```console
set -x OPENAI_API_KEY "<your-openai-key>"
```

## Usage

Ask you inquiry directly as parameter.
```console
> gpt "what is the biggest fish"
The biggest fish is the whale shark, which can grow up to 40 feet (12 meters) long and weigh up to 21 tons (42,000 pounds).
```

For debugging purpose, use `rgpt` for raw result.
```console
> rgpt "what is the biggest fish"
{
  "id": "chat-id",
  "object": "chat.completion",
  "created": timestamp,
  "model": "gpt-3.5-turbo-0301",
  "usage": {
    "prompt_tokens": 12,
    "completion_tokens": 35,
    "total_tokens": 47
  },
  "choices": [
    {
      "message": {
        "role": "assistant",
        "content": "\n\nThe biggest fish is the whale shark, which can grow up to 40 feet (12 meters) long and weigh up to 21 tons (42,000 pounds)."
      },
      "finish_reason": "stop",
      "index": 0
    }
  ]
}
```

## License

[MIT](LICENSE)
