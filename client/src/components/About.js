import React from "react";
import muddy from "../muddy.jpg";
import { AboutStyle } from "./styles";

function About() {
  return (
    <AboutStyle>

      <div className="narrow">
        <p>
          Hello my name is Sean, and I am the creator of Virginia MTB Rain Data
          a website specifically designed for checking the amount of recent
          rainfall on a trail system. I developed this website because of my
          love for mountain biking and to showcase my skills as a recent
          graduate of the Flatiron School as a Software Developer.
        </p>
        <div className="wrap">
          <img
            className="wrap"
            src={muddy}
            alt="Mountain bike at the top of a mountain"
          />
          <div className="caption">"0% chance of rain was a lie"</div>
        </div>
        <p>
          As a mountain biker, I know how frustrating it can be to get to a
          trail and find it's too muddy to ride. Rainfall can significantly
          impact the trail condition, making it either an enjoyable ride or an
          unpleasant experience that could damage the trails. With my website, I
          aim to provide accurate and up-to-date information on whether a trail
          is safe and rideable or too muddy and should be avoided.
        </p>
        <p>
          My coding skills acquired through the Flatiron School allowed me to
          create a website that uses real-time weather data and customized
          algorithms tailored to provide accurate rain data calculations. My
          website is designed to help fellow mountain bikers make informed
          decisions on whether to hit the trails or wait for better weather
          conditions.
        </p>
        <p>
          Thank you for visiting my website, and I hope it helps you plan your
          next ride! Please feel free to send any feedback to
          toxicity1314@gmail.com and check out my{" "}
          <a href="https://www.linkedin.com/in/sean-welsh">
            LinkedIn
          </a>
        </p>
      </div>
    </AboutStyle>
    // <AboutStyle>

    // <div className="about">
    //   <h1>Welcome</h1>
    //   <div className="content">
    //     <div className="left">
    //       <img
    //               className="picture"
    //               src={muddy}
    //               alt="Mountain bike at the top of a mountain"
    //               />
    //               </div>
    //               <div className="right">
    //                 <p>
    //                   Hello my name is Sean, and I am the creator of Virginia MTB Rain Data
    //                   a website specifically designed for checking the amount of recent
    //                   rainfall on a trail system. I developed this website because of my
    //                   love for mountain biking and to showcase my skills as a recent
    //                   graduate of the Flatiron School as a Software Developer.
    //                 </p>
    //                 <p>
    //                   As a mountain biker, I know how frustrating it can be to get to
    //                   a trail and find it's too muddy to ride. Rainfall can
    //                   significantly impact the trail condition, making it either an
    //                   enjoyable ride or an unpleasant experience that could damage the
    //                   trails. With my website, I aim to provide accurate and
    //                   up-to-date information on whether a trail is safe and rideable
    //                   or too muddy and should be avoided.
    //                 </p>
    //               </div>
    //             </div>
    //             <p>
    //               My coding skills acquired through the Flatiron School allowed me
    //               to create a website that uses real-time weather data and
    //               customized algorithms tailored to provide accurate rain data
    //               calculations. My website is designed to help fellow mountain
    //               bikers make informed decisions on whether to hit the trails or
    //               wait for better weather conditions.
    //             </p>
    //             <p>
    //               Thank you for visiting my website, and I hope it helps you plan your
    //               next ride! Please feel free to send any feedback to
    //               toxicity1314@gmail.com and check out my{" "}
    //               <a target="_blank" href="https://www.linkedin.com/in/sean-welsh">
    //                 LinkedIn
    //               </a>
    //             </p>
    //           </div>
    //               </AboutStyle>
  );
}

export default About;
