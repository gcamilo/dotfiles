#set -x
source /opt/dev/dev.sh

for file in ~/.bash/*.bash; do
  source "${file}"
done

unset DISPLAY

source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
source /usr/local/bin/env_parallel.bash
export FZF_DEFAULT_OPTS="--height=40% --multi"
export FZF_DEFAULT_COMMAND='fd --type f --no-ignore'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"

export PATH=$GOPATH/bin:$PATH
export PATH="$HOME/.yarn/bin:$PATH"
export BACKTRACE=1
export GOPATH=$HOME
export DISABLE_DATABASE_ENVIRONMENT_CHECK=1
# export RUST_LOG=info
export RIPGREP_CONFIG_PATH="$HOME/.rgrc"

(ssh-add -l | grep -q "no identities") && ssh-add -K
# export DOCKER_TLS_VERIFY="1"
# export DOCKER_HOST="tcp://192.168.64.3:2376"
# export DOCKER_CERT_PATH="/Users/sirup/.minikube/certs"
# export DOCKER_API_VERSION="1.23"
