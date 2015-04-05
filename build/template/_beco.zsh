_beco() {
    _arguments \
        "-i[Enables interactive tty]" \
        "-c[Specify command]" \
        "-s[Specify path to store session file]" \
        "-k[Kill specified command\'s session]" \
        "-l[Show sessions]" \
        "-h[Show this help]" \
        "-d[Dry run mode]" \
        "-v[Show version]" \
        "*: :__beco_commands"
}

__beco_commands() {
    _values \
        'commands' \
@(for commands)
            '$(name)' \
@(end)
}

compdef _beco beco
