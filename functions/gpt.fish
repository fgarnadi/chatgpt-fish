function gpt
    set url "https://api.openai.com/v1/chat/completions"
    set model "gpt-3.5-turbo"
    set body "{\"model\":\"$model\", \"messages\":[{\"role\": \"user\", \"content\": \"$argv[1]\"}]}"
    set headers "Content-Type: application/json"
    set auth "Authorization: Bearer $OPENAI_API_KEY"

    curl -s -H "$headers" -H "$auth" -d "$body" "$url" \
        | jq -r ".choices[0].message.content"
end
