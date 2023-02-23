import React, { useState, useEffect } from "react";

function Home() {
  const [count, setCount] = useState(0);

  useEffect(() => {
    fetch("/hello")
      .then((r) => r.json())
      .then((data) => setCount(data.count));
  }, []);

  return (
    <div className="NavBar">
        {count}
    </div>
  );
}

export default Home;