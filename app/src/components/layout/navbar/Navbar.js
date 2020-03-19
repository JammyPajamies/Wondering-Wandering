// NPM modules
import React, { Component } from 'react'
import { NavLink } from 'react-router-dom'

// Components
import Subtitle from './subtitle/Subtitle'

// Contexts
import PortfolioContext from '../../../context/PortfolioState'

// CSS
import './Navbar.css'

export class Navbar extends Component {
  static contextType = PortfolioContext

  render () {
    return (
      <nav id='navbar' className='navbar navbar-expand-md navbar-dark sticky-top ml-auto shadow'>
        <div className='row'>
          <div className='col-6'>

            <NavLink
              exact to='/'
              className='navbar-brand'
              activeStyle={{
                color: 'var(--whiteish)',
                textDecoration: 'underline'
              }}
              style={{
                fontWeight: 'bold',
                color: 'var(--blackish)'
              }}
            >Wondering Wandering
            </NavLink>

            <Subtitle />

          </div>
        </div>

        <button className='navbar-toggler' type='button' data-toggle='collapse' data-target='#navbarSupportedContent' aria-controls='navbarSupportedContent' aria-expanded='false' aria-label='Toggle navigation'>
          <span className='navbar-toggler-icon' />
        </button>

        <div className='collapse navbar-collapse' id='navbarSupportedContent'>
          <span className='navbar-nav ml-auto'>
            <li className='nav-item'>

              <a className='navbar-link' rel='noreferrer noopener external' href='/files/resume.pdf' target='_blank'><b>Resume</b></a>
              <label />

              <NavLink
                exact to='/guestbook'
                className='navbar-link'
                activeStyle={{
                  color: 'var(--whiteish)',
                  textDecoration: 'underline'
                }}
                style={{
                  fontWeight: 'bold',
                  color: 'var(--blackish)'
                }}
              >Guestbook
              </NavLink>

              <label />

              <NavLink
                exact to='/'
                className='navbar-link'
                onClick={(clickEvent) => {
                  // Prevent redirect if already on the homepage.
                  if (window.location.pathname === '/') {
                    clickEvent.preventDefault()
                    this.context.setFocusedProjectID(0)
                    this.context.setIsShowingAboutMe(true)
                  }
                }}
                style={{
                  fontWeight: 'bold',
                  color: 'var(--blackish)'
                }}
              >About Me
              </NavLink>

            </li>
          </span>
        </div>
      </nav>
    )
  }
}

export default Navbar
