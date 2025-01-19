"use client";

import { RefObject, SyntheticEvent, useEffect, useRef, useState } from "react";
import {
  Drawer,
  DrawerContent,
  DrawerHeader,
  DrawerBody,
  DrawerFooter,
  Button,
  Form,
  Input,
} from "@heroui/react";

import { LocalStorageKeys } from "@/enums/storage.enums";
import { CardPositionSaveData } from "@/types/storage.types";

type Props = {
  toggle: () => void;
  localEdit: (
    e: SyntheticEvent<HTMLButtonElement>,
    ref: RefObject<HTMLFormElement>,
  ) => void;
  isOpen: boolean;
  cardsLength: number;
};

function LabelInputField({ card }: { card: CardPositionSaveData }) {
  const [state, setState] = useState(card.label);

  return (
    <Input
      key={card.id}
      isRequired
      className="w-full pt-4"
      errorMessage="Card label must be at least 3 characters long."
      label={`Card ${card.seq}`}
      labelPlacement="outside"
      minLength={3}
      name={card.id}
      placeholder="Enter Label for card position"
      value={state}
      variant="underlined"
      onChange={(e) => setState(e.target.value)}
    />
  );
}

export default function LabelEditor({ isOpen, toggle, localEdit, cardsLength }: Props) {
  const [store, setStore] = useState<CardPositionSaveData[]>([]);
  const formRef = useRef<HTMLFormElement>(null);

  useEffect(() => {
    const cards = localStorage.getItem(
      LocalStorageKeys.spreadPositionsAutoSave,
    );

    setStore(cards ? JSON.parse(cards) : []);
  }, []);

  return (
    <>
      <Drawer
        isDismissable={false}
        isKeyboardDismissDisabled={true}
        isOpen={isOpen}
        placement="left"
        size="2xl"
        onOpenChange={toggle}
      >
        <DrawerContent>
          {(onClose) => (
            <>
              <DrawerHeader className="flex flex-col gap-1">
                <h3 className="text-2xl">Edit Spread Details</h3>
              </DrawerHeader>
              <DrawerBody>
                <p>
                  Set/Change details for the spread, such as the title,
                  description, and meaning for the position of the cards in the
                  spread.
                </p>
                <Form
                  ref={formRef}
                  className="mt-6 mx-16"
                  validationBehavior="native"
                >
                  <Input
                    isRequired
                    className="w-full"
                    errorMessage="Title ust be at least 5 characters long."
                    label="Title"
                    labelPlacement="outside"
                    minLength={5}
                    name="title"
                    variant="underlined"
                  />
                  {store.map((card: CardPositionSaveData, index: number) => (
                    <LabelInputField key={index} card={card} />
                  ))}
                </Form>
              </DrawerBody>
              <DrawerFooter>
                <Button color="danger" variant="light" onPress={onClose}>
                  Close
                </Button>
                <Button
                  color="primary"
                  onPress={(e) =>
                    localEdit(
                      e as unknown as SyntheticEvent<HTMLButtonElement>,
                      formRef,
                    )
                  }
                >
                  Action
                </Button>
              </DrawerFooter>
            </>
          )}
        </DrawerContent>
      </Drawer>
    </>
  );
}
