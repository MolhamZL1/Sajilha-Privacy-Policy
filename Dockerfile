FROM nginx:alpine

# انسخ ملفات الموقع (index.html و أي مجلد assets)
COPY . /usr/share/nginx/html

# غيمة بتحب عادة تسمع على $PORT بدل رقم ثابت
ENV PORT=80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

