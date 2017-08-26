var Products = React.createClass({
  render: function() {
    return (
      <div>
        {this.props.products.map(function(product){
          return (
            <div>
              <p>{product.name}</p>
              <ProductForm product = {product}/>
            </div>
          )
        })}

        <h3>Order:</h3>
      </div>
    )
  }
});
