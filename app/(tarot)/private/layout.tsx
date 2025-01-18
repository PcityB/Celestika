import DashboardSideNav from "@/components/dashboard-side-nav";

type Props = {
  children: React.ReactNode;
};

export default function Layout({ children }: Props) {
  return (
    <div className="flex pt-14">
      <DashboardSideNav />
      {children}
    </div>
  );
}
