import React, { useContext, useState } from "react";
import { UserContext } from "../context/user";
import { NavLink } from "react-router-dom";
import ModalForm from "./ModalForm";

function NavBar() {
  const { user, setUser } = useContext(UserContext);
  const [show, setShow] = useState(false);
  const [buttonPressed, setButtonPressed] = useState(false);

  const handleShow = (e) => {
    setButtonPressed(e.target.name);
    setShow(true);
  };

  let activeStyle = {
    color: "red",
  };

  const handleLogOut = () => {
    setUser({ username: false, admin: false });
    fetch("/logout", {
      method: "DELETE",
    });
  };

  return (
    <nav className="NavBar">
      <NavLink
        className="NavBarLink"
        to="/"
        style={({ isActive }) => (isActive ? activeStyle : undefined)}
      >
        Home
      </NavLink>

      <NavLink
        className="NavBarLink"
        to="Explore"
        style={({ isActive }) => (isActive ? activeStyle : undefined)}
      >
        Explore
      </NavLink>
      <NavLink
        className="NavBarLink"
        to="About"
        style={({ isActive }) => (isActive ? activeStyle : undefined)}
      >
        About
      </NavLink>

      {user.username ? (
        <NavLink className="NavBarLink" onClick={handleLogOut}>
          Logout
        </NavLink>
      ) : (
        <NavLink
          className="NavBarLink"
          variant="primary"
          onClick={handleShow}
          name="Login"
        >
          Login
        </NavLink>
      )}
      {user.username ? (
        `Welcome ${user.username}`
      ) : (
        <NavLink
          className="NavBarLink"
          variant="primary"
          onClick={handleShow}
          name="Sign up"
        >
          SignUp
        </NavLink>
      )}
      {buttonPressed && (
        <ModalForm
          buttonPressed={buttonPressed}
          setButtonPressed={setButtonPressed}
        ></ModalForm>
      )}
    </nav>
  );
}

export default NavBar;
