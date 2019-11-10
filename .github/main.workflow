workflow 'on pull request update, run flake8 and post results' {
    on = 'pull_request'
    resolves = 'run flake8'
}

action 'run flake8' {
    uses = 'tayfun/flake8-your-pr@v1.0.1'
    secrets = ["GITHUB_TOKEN"]
}

