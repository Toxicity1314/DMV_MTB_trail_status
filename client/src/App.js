import React, { useState, useEffect } from "react";
import {Routes, Route} from "react-router-dom"
import NavBar from "./components/NavBar"
import Home from "./components/Home";
import TrailPage from "./components/TrailPage";
import SignUp from "./components/SignUp";
import Login from "./components/Login"
import Explore from "./components/Explore"
import { UserProvider } from "./context/user"

function App() {


  return (
    <div className="App">
      <UserProvider>
      <NavBar/>
      <Routes>
        <Route path="/Home" element={<Home/>} />
        <Route path="/TrailSystem/:id" element={<TrailPage/>} />
        <Route path="/SignUp" element={<SignUp/>} />
        <Route path="/Login" element={<Login/>}/>
        <Route path="/Explore" element={<Explore/>}/>
      </Routes>
      </UserProvider>
    </div>
  );
}

export default App;