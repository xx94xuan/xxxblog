import React from 'react';

export default function Header({pieces_path, events_path, login_path, register_path, landing_page_path}) {
  return (
    <div className='header-container'>
      <a className='item-text' href={landing_page_path}>Home</a>

      <a className='item-text' href={pieces_path}>Private Pieces</a>
    
      <a className='item-text' href={events_path}>Private Events</a>
    
      <a className='item-text' href={login_path}>Login</a>
    
      <a className='item-text' href={register_path}>Register</a>
    </div>
  );
}
