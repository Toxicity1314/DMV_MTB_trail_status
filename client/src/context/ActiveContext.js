import React, { useState } from "react";

// create the context
const ActiveContext = React.createContext();

// create a provider component
function ActiveProvider({ children }) {
    const [active, setActive] = useState(1);
  // the value prop of the provider will be our context data
  // this value will be available to child components of this provider
  return (
    <ActiveContext.Provider value={{ active, setActive }}>
      {children}
    </ActiveContext.Provider>
  );
}

export { ActiveContext, ActiveProvider };
