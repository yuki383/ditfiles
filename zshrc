#区切り文字とみなされない文字
#デフォルトから`/`を除いている
export WORDCHARS='*?_.[]~-=&;!#$%^(){}<>' 

#zshの補完を有効にする
autoload -Uz compinit && compinit

if [ -e ~/.zshrc.local ]; then
  source ~/.zshrc.local
fi

# export path of deno
export DENO_INSTALL="/home/$(whoami)/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

#zplugのinit
export ZPLUG_HOME=~/.zplug
source $ZPLUG_HOME/init.zsh

#prompt
zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme
zplug zsh-users/zsh-syntax-highlighting, defer:2

#インストールされていないPluginがある場合インストールする
if ! zplug check --verbose; then
        printf "Installl? [y/N]: "
        if read -q; then
                echo; zplug install
        fi
fi

zplug load --verbose

# pnpm
export PNPM_HOME="/home/$(whoami)/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
