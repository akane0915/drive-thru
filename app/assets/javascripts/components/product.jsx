var Product = React.createClass({
  render: function() {
    return (
      <div>
        <div className="product">
          <p> {this.props.product.name} </p>
        </div>
      </div>
    )
  }
});
