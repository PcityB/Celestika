
type Props = {
  children: React.ReactNode;
}
export default function Layout({ children }: Props) {
  return (
    <div>
      <h1>Layout</h1>
      {children}
    </div>
  );
}