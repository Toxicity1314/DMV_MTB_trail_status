import React, { useState, useEffect } from "react";
import { NavLink } from "react-router-dom";

function NavBar() {
  let activeStyle = {
    color: "red"
  };

  return (
    <nav className="NavBar">
        <NavLink
        to="Home"
        style={({isActive}) =>
        isActive ? activeStyle : undefined
        
      }
      >
        Home
      </NavLink>

      <NavLink
        to="Explore"
        style={({isActive}) =>
        isActive ? activeStyle : undefined
        
      }>
        Explore
      </NavLink>
      <NavLink
        to="About"
        style={({isActive}) =>
        isActive ? activeStyle : undefined
        
      }>
        About
      </NavLink>
      <NavLink
        to="SignUp"
        style={({isActive}) =>
        isActive ? activeStyle : undefined
        
      }>
        SignUp
      </NavLink>
      
        <NavLink
        to="Login"
        style={({isActive}) =>
        isActive ? activeStyle : undefined
        
      }>
        Login
      </NavLink>
    </nav>
  );
}

export default NavBar;