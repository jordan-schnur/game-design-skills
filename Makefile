# Installs the game design skills into Claude Code by symlinking each
# skills/<name> directory into ~/.claude/skills/<name>. Symlinks, not copies,
# so a git pull in this repo updates the installed skills.

SKILLS_SRC := $(wildcard skills/*/SKILL.md)
SKILLS     := $(patsubst skills/%/SKILL.md,%,$(SKILLS_SRC))
DEST       ?= $(HOME)/.claude/skills
REPO       := $(abspath .)

.PHONY: install uninstall list check

install: check
	@mkdir -p "$(DEST)"
	@for s in $(SKILLS); do \
	  if [ -e "$(DEST)/$$s" ] && [ ! -L "$(DEST)/$$s" ]; then \
	    echo "skip  $$s: $(DEST)/$$s exists and is not a symlink"; \
	  else \
	    ln -sfn "$(REPO)/skills/$$s" "$(DEST)/$$s"; echo "link  $$s -> $(DEST)/$$s"; \
	  fi; \
	done

uninstall:
	@for s in $(SKILLS); do \
	  if [ -L "$(DEST)/$$s" ]; then rm "$(DEST)/$$s"; echo "unlink $$s"; fi; \
	done

list:
	@for s in $(SKILLS); do echo "$$s"; done

# Frontmatter must have name and description, stay under 1024 characters,
# and prose must not use em-dashes (repo convention).
check:
	@fail=0; for f in $(SKILLS_SRC); do \
	  fm=$$(awk 'NR==1 && $$0!="---"{exit 1} NR>1 && $$0=="---"{exit} NR>1{print}' "$$f") || { echo "FAIL $$f: no frontmatter"; fail=1; continue; }; \
	  echo "$$fm" | grep -q '^name: ' || { echo "FAIL $$f: no name"; fail=1; }; \
	  echo "$$fm" | grep -q '^description: ' || { echo "FAIL $$f: no description"; fail=1; }; \
	  [ $$(printf '%s' "$$fm" | wc -c) -le 1024 ] || { echo "FAIL $$f: frontmatter over 1024 chars"; fail=1; }; \
	done; \
	if grep -rln -- '—' skills README.md SPEC.md 2>/dev/null; then echo "FAIL: em-dash found in files above"; fail=1; fi; \
	[ $$fail -eq 0 ] && echo "check ok ($(words $(SKILLS)) skills)" || exit 1
