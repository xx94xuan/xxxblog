import PropTypes from 'prop-types';
import React from 'react';
import LinkButton from "./LinkButton.jsx";

export default class UnionButton extends React.Component {
  static propTypes = {
    value: PropTypes.string.isRequired,
    type: PropTypes.arrayOf(['submit'])
  };

  constructor(props){
    super(props);

    this.handleClick = this.handleClick.bind(this);
  }

  handleClick(e) {
    e.preventDefault();
    $(`input[name=commit]`).click();
  }

  render() {
    let { value, type } = this.props;

    return (
      <div className='union-btn'>
        <input className="default-form-btn" type={type} name="commit" value={value} data-disable-with={value} />
        <LinkButton text={value} union={true} handleClick={this.handleClick}></LinkButton>
      </div>
    );
  }
}
