"use client";
import React, { useState } from "react";
import {
  Form,
  Input,
  Button,
  Card,
  CardBody,
  CardHeader,
  CardFooter,
  Link,
  Checkbox,
} from "@heroui/react";
import { useForm, useDebounce } from "@custom-react-hooks/all";

import { signup } from "./actions";

export type FormValues = {
  screen_name: string;
  email: string;
  password: string;
  confirmPassword: string;
};

export default function Page() {
  const initValues = {
    screen_name: "",
    email: "",
    password: "",
    confirmPassword: "",
  };
  const [submitting, setSubmitting] = useState(false);
  const [userAgreement, setUserAgreement] = useState(false);

  const [updateScreenName] = useDebounce(
    (val) => {
      console.log(val);
    },
    1000,
    { maxWait: 5000 }
  );

  const handleChangeDebounced = (e: React.ChangeEvent<HTMLInputElement>) => {
    updateScreenName(e.target.value);
    handleChange(e);
  };

  const validate = (values: typeof initValues) => {
    const errors: Record<string, string> = {};

    if (values.screen_name.length < 3) {
      errors.screen_name = "Screen name must be at least 3 characters long";
    } else if (values.screen_name.length > 20) {
      errors.screen_name = "Screen name cannot exceed 20 characters length";
    } else {
      const screenNameRegex = /^[a-zA-Z0-9_]+$/;

      if (!screenNameRegex.test(values.screen_name)) {
        errors.screen_name =
          "Screen name can only contain letters, numbers, and underscores";
      }
    }
    if (!values.email.includes("@")) {
      errors.email = "Please enter a valid email";
    }
    if (values.password.length < 6) {
      errors.password = "Password must be at least 6 characters long";
    }
    if (values.password !== values.confirmPassword) {
      errors.confirmPassword = "Passwords do not match";
    }

    return errors;
  };

  const {
    values,
    errors,
    touched,
    handleChange,
    handleBlur,
    handleSubmit,
    resetForm,
  } = useForm(initValues, validate);

  const onSubmit = async () => {
    setSubmitting(true);

    await signup(values);
    resetForm();
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
            onSubmit={(e) => handleSubmit(e, onSubmit)}
          >
            <Input
              isRequired
              className="mb-4"
              errorMessage={touched.screen_name && errors.screen_name}
              label="Screen Name"
              labelPlacement="outside"
              name="screen_name"
              placeholder="Enter your username"
              type="text"
              value={values.screen_name}
              onBlur={handleBlur}
              onChange={handleChangeDebounced}
            />
            <Input
              isRequired
              className="mb-4"
              errorMessage={touched.email && errors.email}
              label="Email"
              labelPlacement="outside"
              name="email"
              placeholder="Enter your email"
              type="email"
              value={values.email}
              onBlur={handleBlur}
              onChange={handleChange}
            />
            <Input
              isRequired
              className="mb-4"
              errorMessage={touched.password && errors.password}
              label="Password"
              labelPlacement="outside"
              name="password"
              placeholder="Enter your password"
              type="password"
              value={values.password}
              onBlur={handleBlur}
              onChange={handleChange}
            />
            <Input
              isRequired
              className="mb-4"
              errorMessage={touched.confirmPassword && errors.confirmPassword}
              label="Confirm Password"
              labelPlacement="outside"
              name="confirmPassword"
              placeholder="Confirm your password"
              type="password"
              value={values.confirmPassword}
              onBlur={handleBlur}
              onChange={handleChange}
            />
            <Checkbox
              className="mx-auto"
              isSelected={userAgreement}
              onValueChange={setUserAgreement}
            >
              I agree to <Link>Terms of Service</Link>
            </Checkbox>
            <CardFooter className="flex-col justify-end">
              <Button
                className="w-full"
                color="primary"
                isDisabled={!userAgreement}
                isLoading={submitting}
                type="submit"
                variant="solid"
              >
                Submit
              </Button>
              <p className="text-center mt-4 text-sm">
                Already have an account? Sign in <Link href="\login">here</Link>
              </p>
            </CardFooter>
          </Form>
        </CardBody>
      </Card>
    </div>
  );
}
