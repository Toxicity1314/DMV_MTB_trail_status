import React, { useState, useEffect } from "react";
import {Routes, Route} from "react-router-dom"
import NavBar from "./components/NavBar"
import Home from "./components/Home";
import TrailPage from "./components/TrailPage";

function App() {


  return (
    <div className="App">
      <NavBar/>
      <Routes>
        <Route path="/Home" element={<Home/>} />
        <Route path="/TrailSystem/:id" element={<TrailPage/>} />
      </Routes>
    </div>
  );
}

export default App;