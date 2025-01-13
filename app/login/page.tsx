"use client";
import React from "react";
import {
  Form,
  Card,
  CardBody,
  CardHeader,
  CardFooter,
  Button,
  Input,
} from "@nextui-org/react";

import { login } from "./actions";

export default function Page() {
    const [submitted, setSubmitted] = React.useState<Record<
      string,
      FormDataEntryValue
    > | null>(null);
  const handleSubmit = (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    const data = Object.fromEntries(new FormData(e.currentTarget));

    setSubmitted(data);
  }

  return (
    <div className="flex justify-center items-center pt-16">
      <Card className="w-full max-w-sm">
        <CardHeader className="flex justify-center">
          <h3 className="text-3xl">Sign In</h3>
        </CardHeader>
        <CardBody>
          <Form className="w-full max-w-xs mx-auto" onSubmit={handleSubmit}>
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
            <CardFooter>
              <Button className="w-full" color="primary">
                Login
              </Button>
              {submitted && (<code>you submitted{JSON.stringify(submitted)}</code>)}
            </CardFooter>
          </Form>
        </CardBody>
      </Card>
    </div>
  );
}
