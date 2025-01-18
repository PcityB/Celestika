import { Fragment, RefObject } from "react";
import clsx from "clsx";
import {
  Modal,
  ModalContent,
  ModalHeader,
  ModalFooter,
  useDisclosure,
  ModalBody,
  Button,
} from "@heroui/react";

type Sizes =
  | "xs"
  | "sm"
  | "md"
  | "lg"
  | "xl"
  | "2xl"
  | "3xl"
  | "4xl"
  | "5xl"
  | "full";

interface ModalProps {
  children: React.ReactNode | React.ReactNode[];
  modalSize?: Sizes;
  headerText: string;
  triggerBtnText: string;
  hidden?: boolean;
  refObj?: RefObject<HTMLButtonElement>;
  onConfirm?: () => void;
}

export default function ModalComponent({
  children,
  headerText,
  modalSize,
  triggerBtnText,
  hidden,
  refObj,
  onConfirm,
}: ModalProps) {
  const { isOpen, onOpen, onClose, onOpenChange } = useDisclosure();

  return (
    <Fragment>
      <Fragment>
        <Button
          ref={refObj}
          className={clsx(hidden ? "invisible" : "visible")}
          color="primary"
          onPress={onOpen}
        >
          {triggerBtnText}
        </Button>
      </Fragment>
      <Modal
        isDismissable={false}
        isOpen={isOpen}
        size={modalSize}
        onClose={onClose}
        onOpenChange={onOpenChange}
      >
        <ModalContent>
          {(onClose) => (
            <Fragment>
              <ModalHeader className="flew flex-col gap-1">
                {headerText}
              </ModalHeader>
              <ModalBody>{children}</ModalBody>
              <ModalFooter>
                <Button color="secondary" onPress={onClose}>
                  Cancel
                </Button>
                <Button
                  color="primary"
                  onPress={() => {
                    onClose();
                    if (onConfirm) {
                      onConfirm();
                    }
                  }}
                >
                  Confirm
                </Button>
              </ModalFooter>
            </Fragment>
          )}
        </ModalContent>
      </Modal>
    </Fragment>
  );
}
