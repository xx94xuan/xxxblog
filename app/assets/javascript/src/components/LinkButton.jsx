import PropTypes from 'prop-types';
import React from 'react';

export default class LinkButton extends React.Component {
  static propTypes = {
    text: PropTypes.string.isRequired, // this is passed from the Rails view
    link: PropTypes.string.isRequired,
  };

  constructor(props){
    super(props);
  }

  render() {
    let className = this.props.class || '';

    return (
      <div className='link-btn'>
        <div className='btn'>
          <a className={`btn-text ${className}`} href={this.props.link}>{this.props.text}</a>
        </div>
      </div>
    );
  }
}
