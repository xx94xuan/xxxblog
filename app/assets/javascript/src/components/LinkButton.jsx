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
    let { linkClass, text, link, union, handleClick } = this.props;
    let clickProps = union ? {onClick: handleClick} : '';

    return (
      <div className='link-btn'>
        <div className='btn'>
          <a className={`btn-text ${linkClass}`} href={link} {...clickProps}>{text}</a>
        </div>
      </div>
    );
  }
}
