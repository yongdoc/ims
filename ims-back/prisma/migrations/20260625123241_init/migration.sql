-- AddForeignKey
ALTER TABLE "Product" ADD CONSTRAINT "Product_category_fkey" FOREIGN KEY ("category") REFERENCES "ProductCategory"("category") ON DELETE RESTRICT ON UPDATE CASCADE;
