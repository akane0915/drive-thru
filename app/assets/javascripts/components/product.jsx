var Product = React.createClass({

  render: function() {
    return (
      <div>
        <div className="product">
          <p> {this.props.product.name} </p>
          <ProductForm product = {this.props.product}/>
        </div>
      </div>
    )
  }
});
