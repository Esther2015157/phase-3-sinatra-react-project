import "./App.css";
import React from "react";
import { BrowserRouter as Router, Route,Routes,} from "react-router-dom";
import NavBar from "./components/Navbar";
import Home from "./components/Home";
import Feedback from "./components/Feedback"
 import Reviews from "./components/Reviews";
 import Restaurants from "./components/Restaurants"
import About from "./components/About";
 function App() {
    return (
      <div className="App">
           <Router>
      <NavBar />
      <Routes>
        <Route path='/' element={<Home/>} />
        <Route path='/Feedback' element={<Feedback />} />
        <Route path='/review' element={<Reviews/>}/>
        <Route path='/About' element={<About/>}/> 
        <Route path= '/Restuarants' element={<Restaurants/>}/>
        </Routes>
      </Router>

  </div>
  );
}

export default App;