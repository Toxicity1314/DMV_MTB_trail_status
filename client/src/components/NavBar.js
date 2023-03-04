import React, { useContext, useState } from "react";
import { UserContext } from "../context/user";
import { NavLink } from "react-router-dom";
import Modal from "react-bootstrap/Modal";
import SignUp from "./SignUp";
import Login from "./Login";

function NavBar() {
  const { user, setUser } = useContext(UserContext);
  const [show, setShow] = useState(false);
  const [buttonPressed, setButtonPressed] = useState(false);

  const handleClose = () => {
    setShow(false);
    setButtonPressed(false);
  };
  const handleShow = (e) => {
    console.log(e.target.name)
    setButtonPressed(e.target.name);
    setShow(true);
  };

  let activeStyle = {
    color: "red",
  };

  const handleLogOut = () => {
    setUser(null);
    fetch("/logout", {
      method: "DELETE",
    });
  };

  return (
    <nav className="NavBar">
      <NavLink
        to="/"
        style={({ isActive }) => (isActive ? activeStyle : undefined)}
      >
        Home
      </NavLink>

      <NavLink
        to="Explore"
        style={({ isActive }) => (isActive ? activeStyle : undefined)}
      >
        Explore
      </NavLink>
      <NavLink
        to="About"
        style={({ isActive }) => (isActive ? activeStyle : undefined)}
      >
        About
      </NavLink>

      {user ? (
        <NavLink onClick={handleLogOut}>Logout</NavLink>
      ) : (
        <NavLink variant="primary" onClick={handleShow} name="Login">
          Login
        </NavLink>
      )}
      {user ? (
        `Welcome ${user}`
      ) : (
        <NavLink variant="primary" onClick={handleShow} name="Sign up">
          SignUp
        </NavLink>
      )}
      <Modal show={show} onHide={handleClose} animation={false} centered>
        <Modal.Header closeButton>
          <Modal.Title>{buttonPressed}</Modal.Title>
        </Modal.Header>
        <Modal.Body>
          {buttonPressed === "Login" ? (
            <Login handleClose={handleClose} />
          ) : (
            <SignUp handleClose={handleClose} />
          )}
        </Modal.Body>
      </Modal>
    </nav>
  );
}

export default NavBar;
