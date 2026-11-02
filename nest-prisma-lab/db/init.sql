-- Tables matching prisma/schema.prisma (MySQL). Runs only when the MySQL data directory is empty.
CREATE TABLE IF NOT EXISTS `rooms` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `description` TEXT NULL,
  `capacity` INTEGER NOT NULL,
  `price_per_night` DECIMAL(10, 2) NOT NULL,
  `image_url` VARCHAR(255) NULL,
  `is_active` BOOLEAN NULL DEFAULT true,
  `created_at` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `User` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `password_hash` VARCHAR(255) NOT NULL,
  `role` ENUM('USER', 'ADMIN') NOT NULL DEFAULT 'USER',
  UNIQUE INDEX `User_email_key`(`email`),
  PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;