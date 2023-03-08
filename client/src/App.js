import React from "react";
import { Routes, Route } from "react-router-dom";
import NavBar from "./components/NavBar";
import Home from "./components/Home";
import TrailPage from "./components/TrailPage";
import Explore from "./components/Explore";
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
          <Route path="/Explore" element={<Explore />} />
          <Route path="/" element={<Home />} />
        </Routes>
      </UserProvider>
    </div>
  );
}

export default App;
