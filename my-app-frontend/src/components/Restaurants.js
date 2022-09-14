import React, { useState, useEffect } from 'react'
function Restuarants() {
  const [restaurants, setRestuarants] = useState([]);
  useEffect(() => {
    fetch("http://localhost:9292/restuarant")
      .then((response) => response.json())
      .then((data) => {
        setRestuarants(data)
        console.log(data)
      })
  }, []);
  return (
    <div className='cust-rev'>
      <h3>Restuarant</h3>
      <ul className="restaurants">
        {
          restaurants.map((restaurant) => (
            <ol key={restaurant.id} >
              <span>
                {restaurant.name}
              </span>
              <span>
                {restaurant.location}
              </span>
            </ol>
          ))
        }
      </ul>
    </div>
  )
}
export default Restuarants;






