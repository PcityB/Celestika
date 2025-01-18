import {
  Dropdown,
  DropdownTrigger,
  DropdownMenu,
  DropdownSection,
  DropdownItem,
  Avatar,
  Link,
  Button,
} from "@heroui/react";

export default function AvatarMenu() {
  return (
    <Dropdown>
      <DropdownTrigger>
        <Avatar
          showFallback
          className="cursor-pointer"
          name="josh"
          size="md"
          src="https://via.placeholder.com/150"
        />
      </DropdownTrigger>
      <DropdownMenu aria-label="Actions">
        <DropdownItem key="dashboard">
          <Link href="/private/dashboard">Dashboard</Link>
        </DropdownItem>
        <DropdownSection>
          <DropdownItem key="logout" color="warning">
            <Button as={Link} href="/auth/logout" className="w-full" color="warning" variant="flat">
              Logout
            </Button>
          </DropdownItem>
        </DropdownSection>
      </DropdownMenu>
    </Dropdown>
  );
}
