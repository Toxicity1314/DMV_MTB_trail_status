import React from "react";
import IMG from "../IMG.jpg";
function Home() {
  return (
    <div className="box">
      <div className="picture_wrap" style={{ position: "relative" }}>
        <img
          style={{ width: "100%", height: "100vh" }}
          src={IMG}
          alt="Mountain bike at the top of a mountain"
        />

        <h5 className="text" style={{}}>
          Welcome to the Virginia mtb trails rain data app. This website allows
          you to easily look at recent rain totals for an area based on trail
          system selected. To help preserve our locale trails a general rule of
          thumb is to avoid trails use for 24 hours for every half inch of
          rainfall after a storm event. While this information should be able to
          help you asses trail conditions before leaving your house it is not a
          guarantee that the trail will be good to ride as there are still other
          factors to take into account. If you arrive at a trail and it is still
          muddy or you can see that you are leaving ruts please refrain from
          use.
        </h5>
      </div>
    </div>
  );
}

export default Home;
