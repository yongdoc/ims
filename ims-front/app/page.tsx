import Navbar from '@/src/components/navbar/Navbar';
import Hero from '@/src/components/home/Hero';
import Product from '@/src/components/product/Product';
import Inventory from '@/src/components/inventory/Inventory';
import Rack from '@/src/components/rack/Rack';
import Image from 'next/image';

export default function Home() {
  return (
    <div className="flex flex-col flex-1 items-center justify-center bg-zinc-50 font-sans dark:bg-black">
      <Navbar />
      <main className="flex flex-1 w-full max-w-3xl flex-col items-center justify-between py-32 px-16 bg-white dark:bg-black sm:items-start">
        <Hero />
        <Product />
        <Inventory />
        <Rack />
      </main>
    </div>
  );
}
