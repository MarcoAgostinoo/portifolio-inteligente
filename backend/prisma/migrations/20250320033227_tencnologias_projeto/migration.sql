/*
  Warnings:

  - You are about to drop the column `tipo` on the `projetos` table. All the data in the column will be lost.
  - The `destaque` column on the `projetos` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The `imagens` column on the `projetos` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - Added the required column `tipe` to the `projetos` table without a default value. This is not possible if the table is not empty.
  - Changed the type of `nivel` on the `projetos` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE "projetos" DROP COLUMN "tipo",
ADD COLUMN     "tipe" TEXT NOT NULL,
ALTER COLUMN "repositorio" DROP DEFAULT,
ALTER COLUMN "repositorio" SET DATA TYPE TEXT,
DROP COLUMN "destaque",
ADD COLUMN     "destaque" BOOLEAN NOT NULL DEFAULT false,
DROP COLUMN "imagens",
ADD COLUMN     "imagens" TEXT[],
DROP COLUMN "nivel",
ADD COLUMN     "nivel" INTEGER NOT NULL;
