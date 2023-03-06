import React, { useEffect, useState } from "react";
import Modal from "react-bootstrap/Modal";
import SignUp from "./SignUp";
import Login from "./Login";
import ProblemForm from "./ProblemForm";

function ModalForm({ buttonPressed, setButtonPressed, trail, setTrail }) {
  const [show, setShow] = useState(false);
  useEffect(() => {
    setShow(true);
  }, []);
  const handleClose = () => {
    setShow(false);
    setButtonPressed(false);
  };

  return (
    <Modal show={show} onHide={handleClose} animation={false} centered>
      <Modal.Header closeButton>
        <Modal.Title>{buttonPressed}</Modal.Title>
      </Modal.Header>
      <Modal.Body>
        {buttonPressed === "Login" ? (
          <Login handleClose={handleClose} />
        ) : buttonPressed === "Sign up" ? (
          <SignUp handleClose={handleClose} />
        ) : (
          <ProblemForm
            handleClose={handleClose}
            trail={trail}
            setTrail={setTrail}
          ></ProblemForm>
        )}
      </Modal.Body>
    </Modal>
  );
}

export default ModalForm;
