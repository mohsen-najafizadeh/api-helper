
# انتخاب تصویر PHP
FROM php:5.6-cli

# نصب Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# نصب PHPUnit برای تست
RUN apt-get update && apt-get install -y phpunit

# تنظیمات کاری
WORKDIR /app

# کپی کردن پروژه به کانتینر
COPY . /app

# نصب وابستگی‌های Composer
RUN composer install

# اجرای تست‌ها (در صورت نیاز)
CMD ["phpunit", "--bootstrap", "tests/bootstrap.php", "tests"]
