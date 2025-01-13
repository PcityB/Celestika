"use client";
import React from "react";
import {
  Form,
  Input,
  Button,
  Card,
  CardBody,
  CardHeader,
  CardFooter,
} from "@nextui-org/react";

export default function Page() {
  const [submitted, setSubmitted] = React.useState<Record<
    string,
    FormDataEntryValue
  > | null>(null);

  const onSubmit = (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();

    const data = Object.fromEntries(new FormData(e.currentTarget));

    setSubmitted(data);
  };

  return (
    <div className="flex justify-center items-center pt-16">
      <Card className="w-full max-w-sm">
        <CardHeader className="flex justify-center">
          <h3 className="text-3xl">Sign Up</h3>
          </CardHeader>
        <CardBody>
          <Form
            className="w-full max-w-xs mx-auto"
            validationBehavior="native"
            onSubmit={onSubmit}
          >
            <Input
              isRequired
              className="mb-4"
              errorMessage="Please enter a valid name"
              label="Username"
              labelPlacement="outside"
              name="username"
              placeholder="Enter your username"
              type="text"
            />
            <Input
              isRequired
              className="mb-4"
              errorMessage="Please enter a valid email"
              label="Email"
              labelPlacement="outside"
              name="email"
              placeholder="Enter your email"
              type="email"
            />
            <Input
              isRequired
              className="mb-4"
              errorMessage="Please enter a valid password"
              label="Password"
              labelPlacement="outside"
              name="password"
              placeholder="Enter your password"
              type="password"
            />
            <Input
              isRequired
              className="mb-4"
              errorMessage="Please enter a valid password"
              label="Confirm Password"
              labelPlacement="outside"
              name="confirmPassword"
              placeholder="Confirm your password"
              type="password"
            />
            <CardFooter className="flex justify-end">
              <Button
                className="w-full"
                color="primary"
                type="submit"
                variant="solid"
              >
                Submit
              </Button>
            </CardFooter>
            {submitted && (
              <div className="text-small text-default-500">
                You submitted: <code>{JSON.stringify(submitted)}</code>
              </div>
            )}
          </Form>
        </CardBody>
      </Card>
    </div>
  );
}
