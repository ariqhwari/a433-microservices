# Menggunakan image Node.js versi 14-alpine
FROM node:14-alpine

# Mengatur Work Directory di dalam container menjadi "/app"
WORKDIR /app

# Menyalin seluruh source code ke dalam work directory
COPY . .

# Membuat environment untuk container
ENV NODE_ENV=production DB_HOST=item-db

# Menginstal dependencies untuk production dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Mengekspos port menjadi 8080
EXPOSE 8080

# Menjalankan "npm start" ketika container dimulai
CMD ["npm", "start"]
