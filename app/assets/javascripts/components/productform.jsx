var ProductForm = React.createClass({

  render: function() {
    return (
      <div>
        <form onSubmit={this.updateProduct}>
          <input type="hidden" value="{product.id}"/>
          <input type="submit" value="Add Item" className='btn btn-default' />
        </form>

      </div>
    )
  }
});
