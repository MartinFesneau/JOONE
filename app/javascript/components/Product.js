import React from "react"
class Product extends React.Component {
  render () {
    return (
      <div className="card-product">
        <img src={`${this.props.image}`} />
        <div className="card-product-infos">
          <h2>{this.props.name}</h2>
        </div>
      </div>
    );
  }
}

export default Product
