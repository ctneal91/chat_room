var CommentForm = React.createClass({

  handleButtonClick(){
    var component = this;
    var theEntry = this.refs.entry.getDOMNode().value;

    var commentJSON = {
      comment: {
        entry: theEntry
      }
    }

    $.post("/api/rooms/" + this.props.room.id + "/comments.json", commentJSON).then(function(json){
      component.refs.entry.getDOMNode().value = "";
      window.location = window.location;
    });
  },

  render: function() {
    return(
      <div className="comment_form">
        <input type="text" ref="entry"></input>
        <button onClick={this.handleButtonClick}>Submit</button>
      </div>
    )
  }
});
