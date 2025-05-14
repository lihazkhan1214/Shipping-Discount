-- CreateTable
CREATE TABLE "ShopifyStore" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "shop" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "DiscountRules" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "ruleEnabled" BOOLEAN NOT NULL DEFAULT false,
    "automaticOrCode" TEXT NOT NULL,
    "code" TEXT NOT NULL,
    "discountType" TEXT NOT NULL,
    "discountAmount" TEXT NOT NULL,
    "shippingRateOption" TEXT NOT NULL,
    "shippingRateName" TEXT,
    "startDate" TEXT NOT NULL,
    "startTime" TEXT,
    "hasEndDate" BOOLEAN NOT NULL DEFAULT false,
    "endDate" TEXT,
    "endTime" TEXT,
    "shop" TEXT,
    CONSTRAINT "DiscountRules_shop_fkey" FOREIGN KEY ("shop") REFERENCES "ShopifyStore" ("shop") ON DELETE CASCADE ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "ShopifyStore_shop_key" ON "ShopifyStore"("shop");
