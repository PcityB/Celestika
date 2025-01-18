"use client";
import React, { useActionState, useState } from "react";
import {
  Form,
  Card,
  CardBody,
  CardHeader,
  CardFooter,
  Button,
  Input,
  Alert,
  Link,
} from "@heroui/react";

import { login } from "./actions";

export default function Page() {
  const initValues = { email: "", password: "", message: "" };
  const [values, setValues] = useState(initValues);
  const [state, formAction, pending] = useActionState(login, initValues);

  const handleChange = (e: React.SyntheticEvent<HTMLInputElement>) => {
    const { name, value } = e.currentTarget;

    setValues((prev) => ({ ...prev, [name]: value }));
  };

  return (
    <div className="flex flex-col justify-center items-center pt-16">
      <Card className="w-full max-w-sm">
        <CardHeader className="flex justify-center">
          <h3 className="text-3xl">Sign In</h3>
        </CardHeader>
        <CardBody>
          <Form action={formAction} className="w-full max-w-xs mx-auto">
            <Input
              isRequired
              className="mb-4"
              label="Email"
              labelPlacement="outside"
              name="email"
              placeholder="Enter your email"
              type="email"
              value={values.email}
              onChange={handleChange}
            />
            <Input
              isRequired
              className="mb-4"
              label="Password"
              labelPlacement="outside"
              name="password"
              placeholder="Enter your password"
              type="password"
              value={values.password}
              onChange={handleChange}
            />
            <CardFooter className="flex-col">
              <Button
                className="w-full"
                color="primary"
                isLoading={pending}
                type="submit"
              >
                Login
              </Button>
              <p className="text-center mt-4 text-sm">
                Don&apos;t have an account? Sign up for one{" "}
                <Link href="/login/signup">here</Link>
              </p>
            </CardFooter>
          </Form>
        </CardBody>
      </Card>
      <div className="w-full max-w-sm mt-4 transition-all ease-in-out duration-300">
        {state?.message && <Alert color="danger" title={state.message} />}
      </div>
    </div>
  );
}
