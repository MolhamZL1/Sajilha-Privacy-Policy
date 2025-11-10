# خادم Nginx خفيف
FROM nginx:alpine

# ننسخ إعداد Nginx (بيسمع على 8080 بدل 80 مشان بعض المنصات)
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

# ننسخ ملفات الموقع (index.html و أي assets) لمجلد الويب الافتراضي
COPY ./public/ /usr/share/nginx/html/

# المنصة عادةً بتربط البورت خارجيًا، بس منعلن عن 8080 للوضوح
EXPOSE 8080

# تشغيل Nginx بالـ foreground
CMD ["nginx", "-g", "daemon off;"]
