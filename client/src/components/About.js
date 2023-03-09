import React from "react";
import muddy from "../muddy.jpg";
import Container from "react-bootstrap/Container";
import Row from "react-bootstrap/Row";
import Col from "react-bootstrap/Col";

function About() {
  return (
    <div className="about">
      <h1 className="centerPlease">Welcome</h1>
      <div>
        <p>
          Hello my name is Sean, and I am the creator of Virginia MTB Rain Data
          a website specifically designed for checking the amount of recent
          rainfall on a trail system. I developed this website because of my
          love for mountain biking and to showcase my skills as a recent
          graduate of the Flatiron School as a Software Developer.
        </p>
        <Container>
          <Row>
            <Col>
              <div className="imageSetup">
                <img
                  className="picture"
                  src={muddy}
                  alt="Mountain bike at the top of a mountain"
                />
                <span className="caption">"0% chance of rain was a lie"</span>
              </div>
            </Col>
            <Col>
              <p>
                As a mountain biker, I know how frustrating it can be to get to
                a trail and find it's too muddy to ride. Rainfall can
                significantly impact the trail condition, making it either an
                enjoyable ride or an unpleasant experience that could damage the
                trails. With my website, I aim to provide accurate and
                up-to-date information on whether a trail is safe and rideable
                or too muddy and should be avoided.
              </p>
              <p>
                My coding skills acquired through the Flatiron School allowed me
                to create a website that uses real-time weather data and
                customized algorithms tailored to provide accurate rain data
                calculations. My website is designed to help fellow mountain
                bikers make informed decisions on whether to hit the trails or
                wait for better weather conditions.
              </p>
            </Col>
          </Row>
        </Container>
        <p>
          Thank you for visiting my website, and I hope it helps you plan your
          next ride! Please feel free to send any feedback to
          s.welsh1314@gmail.com and check out my <a target="_blank" href="https://www.linkedin.com/in/sean-welsh"> linkedin</a>
        </p>
      </div>
    </div>
  );
}

export default About;
