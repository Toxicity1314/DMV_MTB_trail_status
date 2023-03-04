import React, { useContext } from "react";
import { UserContext } from "../context/user";
import { NavLink } from "react-router-dom";

function NavBar() {
  const { user, setUser } = useContext(UserContext);

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
        <NavLink
          to="Login"
          style={({ isActive }) => (isActive ? activeStyle : undefined)}
        >
          Login
        </NavLink>
      )}
      {user ? (
        `Welcome ${user}`
      ) : (
        <NavLink
          to="SignUp"
          style={({ isActive }) => (isActive ? activeStyle : undefined)}
        >
          SignUp
        </NavLink>
      )}
    </nav>
  );
}

export default NavBar;
