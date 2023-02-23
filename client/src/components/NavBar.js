import React, { useState, useEffect } from "react";

function NavBar() {
  const [count, setCount] = useState(0);

  useEffect(() => {
    fetch("/hello")
      .then((r) => r.json())
      .then((data) => setCount(data.count));
  }, []);

  return (
    <div className="NavBar">
        test
    </div>
  );
}

export default NavBar;