# homebrew-tools

Homebrew tap for [Errant Solutions](https://errant.solutions)' free, pay-what-you-want
security/sysadmin CLI tools.

## Install

```bash
brew tap errantsolutions/tools
brew install cert-transparency-watcher
brew install dns-hygiene-checker
brew install json-schema-diff
brew install sshd-hardening-auditor
brew install tls-cert-watchdog
```

## Tools

- **cert-transparency-watcher** — Catches rogue or unexpected TLS certificates via Certificate Transparency logs.
- **dns-hygiene-checker** — Finds dangling/orphaned DNS records before an attacker does.
- **json-schema-diff** — Zero-dependency JSON Schema breaking-change detector for API versioning.
- **sshd-hardening-auditor** — Free, zero-dependency SSH daemon hardening auditor (CIS/NIST-aligned checks).
- **tls-cert-watchdog** — Zero-dependency Python tool that checks TLS certificate expiry.

All tools are single-file, dependency-free Python (stdlib only), MIT licensed, made by
[Errant Solutions](https://errant.solutions) — makers of
[Rustinion](https://rustinion.com) (device provisioning & monitoring),
[Big Double D](https://oops.codes) (security awareness training), and
[SSHerpa](https://ssherpa.app) (Android SSH client).
