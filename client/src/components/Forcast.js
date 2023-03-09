import React, { useState, useEffect } from "react";
import Container from "react-bootstrap/Container";
import Row from "react-bootstrap/Row";
import Col from "react-bootstrap/Col";
import Card from "react-bootstrap/Card";
import ListGroup from "react-bootstrap/ListGroup";

function Forcast({ trail }) {
  const [forcastCard, setForcastCard] = useState("");
  useEffect(() => {
    fetch(
      `https://api.open-meteo.com/v1/forecast?latitude=${trail.lat}&longitude=${trail.long}&daily=temperature_2m_max,temperature_2m_min,sunrise,sunset,precipitation_probability_max&current_weather=true&temperature_unit=fahrenheit&precipitation_unit=inch&forecast_days=3&timezone=America%2FNew_York`
    )
      .then((res) => res.json())
      .then((forcast) => {
        setForcastCard(
          forcast.daily.precipitation_probability_max.map((precip, i = 0) => {
            let card = (
              <Col key={i}>
                <Card style={{ width: "18rem" }}>
                  <Card.Header as="h5" style={{ color: "black" }}>
                    Forcast for {forcast.daily.time[i].slice(5, 7)}-
                    {forcast.daily.time[i].slice(8, 11)}-
                    {forcast.daily.time[i].slice(0, 4)}
                  </Card.Header>
                  <ListGroup variant="flush">
                    <ListGroup.Item>{`Max temp ${forcast.daily.temperature_2m_max[i]}°f`}</ListGroup.Item>
                    <ListGroup.Item>{`Min temp ${forcast.daily.temperature_2m_min[i]}°f`}</ListGroup.Item>
                    <ListGroup.Item>{`Rain Probability ${precip}%`}</ListGroup.Item>
                    <ListGroup.Item>{`Sunrise ${forcast.daily.sunrise[i].slice(
                      11
                    )}`}</ListGroup.Item>
                    <ListGroup.Item>{`Sunset ${forcast.daily.sunset[i].slice(
                      11
                    )}`}</ListGroup.Item>
                  </ListGroup>
                </Card>
              </Col>
            );
            i++;
            return card;
          })
        );
      });
  }, []);

  return (
    <Container style={{ marginTop: "2%" }}>
      <Row>{forcastCard}</Row>
    </Container>
  );
}

export default Forcast;
