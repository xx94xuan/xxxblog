import React from 'react';

export default function Header({pieces_path, events_path, login_path, register_path}) {
  return (
    <div className='header-container'>
      <a className='item-text' href={pieces_path}>Pieces</a>
    
      <a className='item-text' href={events_path}>Events</a>
    
      <a className='item-text' href={login_path}>Login</a>
    
      <a className='item-text' href={register_path}>Register</a>
    </div>
  );
}
