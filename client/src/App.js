import React from "react";
import { Routes, Route } from "react-router-dom";
import NavBar from "./components/NavBar";
import Home from "./components/Home";
import TrailPage from "./components/TrailPage";
import TrailSystems from "./components/TrailSystems";
import About from "./components/About"
import { UserProvider } from "./context/user";

function App() {
  return (
    <div className="App">
      <UserProvider>
        {console.log(window.location.href)}
        <h1 style={{ textAlign: "center" }}>Virginia MTB Rain Data</h1>
        <NavBar />
        <Routes>
          <Route path="/TrailSystem/:id" element={<TrailPage />} />
          <Route path="/Explore" element={<TrailSystems />} />
          <Route path="/" element={<Home />} />
          <Route path="/About" element={<About/>}/>
        </Routes>
      </UserProvider>
    </div>
  );
}

export default App;
