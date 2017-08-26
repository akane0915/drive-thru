var Products = React.createClass({
  render: function() {
    return (
      <div>
        {this.props.products.map(function(product){
          return (
            <div key={product.id}>
              <Product product = {product}/>
            </div>
          )
        })}
      </div>
    )
  }
});
