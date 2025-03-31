# Обновление nvm (если требуется)
echo "Обновление nvm..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# Загрузка nvm в текущую сессию
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Установка последней версии Node.js
echo "Установка последней версии Node.js..."
nvm install node

# Установка последней версии npm
echo "Установка последней версии npm..."
nvm use node
npm install -g npm@latest

# Проверка версий
echo "Текущая версия Node.js:"
node -v

echo "Текущая версия npm:"
npm -v