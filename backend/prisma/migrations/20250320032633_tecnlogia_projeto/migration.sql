/*
  Warnings:

  - You are about to drop the column `destaque` on the `projetos` table. All the data in the column will be lost.
  - You are about to drop the column `imagem` on the `projetos` table. All the data in the column will be lost.
  - You are about to drop the column `tipo` on the `projetos` table. All the data in the column will be lost.
  - The `repositorio` column on the `projetos` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - Added the required column `Destaque` to the `projetos` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Imagens` to the `projetos` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Tipo` to the `projetos` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "projetos" DROP COLUMN "destaque",
DROP COLUMN "imagem",
DROP COLUMN "tipo",
ADD COLUMN     "Destaque" TEXT NOT NULL,
ADD COLUMN     "Imagens" INTEGER NOT NULL,
ADD COLUMN     "Tipo" TEXT NOT NULL,
ALTER COLUMN "Nivel" SET DATA TYPE TEXT,
DROP COLUMN "repositorio",
ADD COLUMN     "repositorio" BOOLEAN NOT NULL DEFAULT false;
