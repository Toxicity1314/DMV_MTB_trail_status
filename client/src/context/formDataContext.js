import React, { useState } from "react";

// create the context
const FormDataContext = React.createContext();

// create a provider component
function FormDataProvider({ children }) {
  const [formData, setFormData] = useState({
    sort: "",
    search: "",
    trailsPerPage: 8,
  });
  // the value prop of the provider will be our context data
  // this value will be available to child components of this provider
  return (
    <FormDataContext.Provider value={{ formData, setFormData }}>
      {children}
    </FormDataContext.Provider>
  );
}

export { FormDataContext, FormDataProvider };
