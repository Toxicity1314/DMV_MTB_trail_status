import React from "react";
import { Routes, Route } from "react-router-dom";
import NavBar from "./components/NavBar";
import Home from "./components/Home";
import TrailPage from "./components/TrailPage";
import TrailSystems from "./components/TrailSystems/TrailSystems";
import About from "./components/About";
import { UserProvider } from "./context/user";
import { FormDataProvider } from "./context/formDataContext";
import { ActiveProvider } from "./context/ActiveContext"

function App() {
  return (
    <div className="App">
      <UserProvider>
        <h1 style={{ textAlign: "center" }}>Virginia MTB Rain Data</h1>
        <NavBar />
        <FormDataProvider>
          <ActiveProvider>
          <Routes>
            <Route path="/TrailSystem/:id" element={<TrailPage />} />
            <Route path="/Explore" element={<TrailSystems />} />
            <Route path="/" element={<Home />} />
            <Route path="/About" element={<About />} />
          </Routes>
          </ActiveProvider>
        </FormDataProvider>
      </UserProvider>
    </div>
  );
}

export default App;
