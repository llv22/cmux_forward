# cmux bash integration loader
# Source this from ~/.bashrc (or ~/.bash_profile) to enable cmux shell integration:
#   [[ -n "$CMUX_BASH_INTEGRATION_PENDING" ]] && source "$CMUX_BASH_INTEGRATION_PENDING" && unset CMUX_BASH_INTEGRATION_PENDING

if [[ -n "${CMUX_BASH_INTEGRATION_PENDING:-}" && -r "$CMUX_BASH_INTEGRATION_PENDING" ]]; then
    builtin source "$CMUX_BASH_INTEGRATION_PENDING"
    builtin unset CMUX_BASH_INTEGRATION_PENDING
fi
