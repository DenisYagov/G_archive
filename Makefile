install: install-deps
	npx simple-git-hooks
install-deps: #клонирование репозитория
	npm ci
run: #run project
	node index.js
lint:
	npx eslint ./
linter:
	npm install eslint-plugin-import@latest --save-dev
	npx eslint ./
test_install:
	npm i jest
test:
	NODE_OPTIONS=--experimental-vm-modules npx jest
test-coverage:
	npm test -- --coverage --coverageProvider=v8
