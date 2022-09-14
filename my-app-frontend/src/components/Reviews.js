import React,{useEffect,useState}from 'react'

const Reviews = () => {
  const[reviews, setReview] = useState([])
  
   useEffect(() => {
      fetch("http://localhost:9292/reviews")
      .then((response) => response.json())
      .then((data) =>{
        setReview(data)
        console.log(data)
      })
    },[]);
  const showReview = reviews.map((review) => (
    <ol key={review.id}>
      <p>comment:{review.body}</p>
    </ol>
))
  return (
    <div>{showReview}</div>
  )
}

export default Reviews






































// function DeletePost({review, onDelete}) {
    
//   function handleDeleteClick() {
//    fetch(`https://localhost:9292/reviews/${review.id}`, {
//       method: "DELETE",
//     })
//       .then((resp) => resp.json())
//       .then(() => onDelete(review));
//   }
//   return (
//  <div className='rev'>
//       <div>
//       <span className='body'>{review.body}</span>
//       </div>
//       <div>
//       <button onClick={handleDeleteClick} className="del">Delete</button>
//     </div>
//     </div>
//   )
// }

// export default DeletePost

