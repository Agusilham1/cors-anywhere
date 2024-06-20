# Gunakan Node.js sebagai base image
FROM node:14

# Buat directory kerja baru di dalam container
WORKDIR /usr/src/app

# Salin file package.json dan package-lock.json ke dalam directory kerja
COPY package*.json ./

# Install dependencies
RUN npm install

# Salin seluruh kode aplikasi ke dalam directory kerja
COPY . .

# Port yang digunakan oleh aplikasi
EXPOSE 8080

# Jalankan aplikasi
CMD ["node", "server.js"]
