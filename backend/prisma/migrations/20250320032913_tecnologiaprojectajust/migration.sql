/*
  Warnings:

  - You are about to drop the column `Destaque` on the `projetos` table. All the data in the column will be lost.
  - You are about to drop the column `Imagens` on the `projetos` table. All the data in the column will be lost.
  - You are about to drop the column `Nivel` on the `projetos` table. All the data in the column will be lost.
  - You are about to drop the column `Tipo` on the `projetos` table. All the data in the column will be lost.
  - Added the required column `destaque` to the `projetos` table without a default value. This is not possible if the table is not empty.
  - Added the required column `imagens` to the `projetos` table without a default value. This is not possible if the table is not empty.
  - Added the required column `nivel` to the `projetos` table without a default value. This is not possible if the table is not empty.
  - Added the required column `tipo` to the `projetos` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "projetos" DROP COLUMN "Destaque",
DROP COLUMN "Imagens",
DROP COLUMN "Nivel",
DROP COLUMN "Tipo",
ADD COLUMN     "destaque" TEXT NOT NULL,
ADD COLUMN     "imagens" INTEGER NOT NULL,
ADD COLUMN     "nivel" TEXT NOT NULL,
ADD COLUMN     "tipo" TEXT NOT NULL;
