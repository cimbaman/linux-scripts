# linux-scripts

Made to save all little scripts and commands I wrote to make my life better on Linux or just because I like them.

## Bash
For .bash_aliases and .bash_prompt add to the end of .bashrc
```bash
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.bash_prompt ]; then
    . ~/.bash_prompt
fi
```
