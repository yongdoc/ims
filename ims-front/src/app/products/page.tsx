import Navbar from "@/src/components/navbar/Navbar";
import Product from "@/src/components/product/Product";

export default function Products() {
  return (
    <div className="flex flex-col flex-1 items-center justify-center bg-zinc-50 font-sans dark:bg-black">
      <Product />
    </div>
  );
}
