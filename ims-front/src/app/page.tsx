import Hero from '@/src/components/home/Hero';
import Inventory from '@/src/components/inventory/Inventory';
import Rack from '@/src/components/rack/Rack';

export default function Home() {
  return (
    <div className="flex flex-col flex-1 items-center justify-center bg-zinc-50 font-sans dark:bg-black">
      <Hero />
    </div>
  );
}
