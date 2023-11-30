import React from "react";
import IMG from "../IMG.jpg";
import { HomeStyle } from "./styles";

function Home() {
  return (
    <HomeStyle>
      <div className="narrow">
        <div>
          <h2>Welcome to the Virginia MTB Trails Rain Data App</h2>
          <p>
            This website allows you to easily look at recent rain totals for an
            area based on the selected trail system. To help preserve our local
            trails, a general rule of thumb is to avoid trail use for 24 hours
            for every half inch of rainfall after a storm event.
          </p>
          <div className="wrap">
            <img
              className="picture"
              src={IMG}
              alt="Mountain bike at the top of a mountain"
            />
          </div>
          <p>
            While this information should help you assess trail conditions
            before leaving your house, it is not a guarantee that the trail will
            be good to ride, as there are still other factors to take into
            account. If you arrive at a trail and it is still muddy or you can
            see that you are leaving ruts, please refrain from use.
          </p>
        </div>
      </div>
    </HomeStyle>
  );
}

export default Home;
