[ -z "${PORT}" ] && echo "Not set: PORT";
[ -z "${SECRET}" ] && echo "Not set: SECRET";
[ -z "${DATABASE_HOST}" ] && echo "Not set: DATABASE_HOST";
[ -z "${DATABASE_PORT}" ] && echo "Not set: DATABASE_PORT";
[ -z "${DATABASE_USER}" ] && echo "Not set: DATABASE_USER";
[ -z "${DATABASE_PASSWORD}" ] && echo "Not set: DATABASE_PASSWORD";

cp config.yml prisma.yml
sed -ri 's/port: PORT/port: '$PORT'/g' prisma.yml
sed -ri 's/managementApiSecret: SECRET/managementApiSecret: '$SECRET'/g' prisma.yml
sed -ri 's/host: DATABASE_HOST/host: '$DATABASE_HOST'/g' prisma.yml
sed -ri 's/port: DATABASE_PORT/port: '$DATABASE_PORT'/g' prisma.yml
sed -ri 's/user: DATABASE_USER/user: '$DATABASE_USER'/g' prisma.yml
sed -ri 's/password: DATABASE_PASSWORD/password: '$DATABASE_PASSWORD'/g' prisma.yml