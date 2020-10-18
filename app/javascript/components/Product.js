import React from "react"
import PropTypes from "prop-types"

class Product extends React.Component {
  render () {
      
    return (
      <div className="mr-3">
        <img src={`${this.props.image}`} alt=""/>
        <p>{this.props.jooneId} - {this.props.name}</p>
      </div>
    );
  }
}

Product.propTypes = {
  name: PropTypes.string,
  jooneID: PropTypes.number,
  image: PropTypes.string
};
export default Product
